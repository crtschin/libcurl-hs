{
  description = "Haskell Template using cabal2nix";

  inputs = {
    nixpkgs.url = "flake:nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    hs-bindgen.url = "github:well-typed/hs-bindgen";
    # hs-bindgen.url = "path:/home/crtschin/personal/hs-bindgen";
  };

  outputs = { self, nixpkgs, flake-utils, hs-bindgen, }:
    let
      ghcVer = "ghc967";
      makeOverlay = overlay: super: self: {
        haskell = self.haskell // {
          packages = self.haskell.packages // {
            ${ghcVer} = self.haskell.packages."${ghcVer}".override (oldArgs: {
              overrides = self.lib.composeManyExtensions [
                (oldArgs.overrides or (_: _: { }))
                overlay
              ];
            });
          };
        };
      };

      out = system:
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [ self.overlays.default hs-bindgen.overlays.default ];
            config.allowBroken = true;
          };

          # TODO: Remove this once the following is closed.
          #   https://github.com/well-typed/hs-bindgen/issues/1200
          # libcurl defines the following that cause the above to break.
          # ```
          # typedef void CURL;
          # typedef void CURLSH;
          # ```
          patchedCurl = pkgs.curlFull.overrideAttrs (old:
            assert old.version == "8.17.0"; {
              postInstall = (old.postInstall or "") + ''
                # The handle swaps for void:
                # https://github.com/well-typed/hs-bindgen/issues/1200
                #
                # Delete varargs:
                # Deletion in curl.h: curl_share_setopt
                # Deletion in easy.h: curl_easy_setopt, curl_easy_getinfo
                # Deletion in multi.h: curl_multi_setopt
                find $dev/include/curl -name "*.h" -type f -exec sed -i \
                  -e '/typedef void CURL;/d' \
                  -e '/typedef void CURLSH;/d' \
                  -e '/typedef void CURLM;/d' \
                  -e 's/\bCURL\b/void/g' \
                  -e 's/\bCURLSH\b/void/g' \
                  -e 's/\CURLM\b/void/g' \
                  {} +
              '';
            });

          libcurl-bindings = pkgs.haskell.lib.compose.generateBindings
            ./libcurl-bindings/generate-bindings
            (haskellPackages.callCabal2nix "libcurl-bindings" ./libcurl-bindings
              { });

          libs = with pkgs; [
            pkg-config
            patchedCurl.dev
            llvmPackages.clang
            llvmPackages.libclang
            llvmPackages.llvm

            hsBindgenHook
            hs-bindgen-cli
          ];
          tools = with pkgs; [ just ];
          haskellTools = with haskellPackages; [
            fourmolu
            haskell-language-server
            eventlog2html
            hp2pretty
            profiteur
            ghc-prof-flamegraph
            threadscope
            ghcid
            cabal-fmt
            nixfmt
          ];

          pythonTools = with pkgs; [
            ruff
            basedpyright
            (python313.withPackages
              (pythonPackages: with pythonPackages; [ click ]))
          ];

          haskellPackages = pkgs.haskell.packages.${ghcVer};
          devUtils = tools ++ haskellTools ++ pythonTools;

          commonDeps = libs ++ [ haskellPackages.cabal-install ];
        in {
          packages = {
            libcurl-bindings = pkgs.haskell.packages.${ghcVer}.libcurl-bindings;
            libcurl-linear = pkgs.haskell.packages.${ghcVer}.libcurl-linear;
          };

          devShells.default = haskellPackages.shellFor {
            packages = p: [
              libcurl-bindings
              self.packages.${system}.libcurl-bindings
              self.packages.${system}.libcurl-linear
            ];
            withHoogle = false;
            nativeBuildInputs = devUtils ++ commonDeps;
            shellHook = ''
              export LIBCURL_PATH="${patchedCurl.dev}"
              export ORIGINAL_LIBCURL_PATH="${pkgs.curlFull.dev}"
              export LD_LIBRARY_PATH="${pkgs.llvmPackages.libclang.lib}/lib:$LD_LIBRARY_PATH"
            '';
          };
        };
    in flake-utils.lib.eachDefaultSystem out // {
      overlays = {
        default = makeOverlay (super: self:
          with self; {
            libcurl-bindings = callCabal2nix "libcurl-bindings"
              ./libcurl-bindings/libcurl-bindings.cabal { };
            libcurl-linear = callCabal2nix "libcurl-linear"
              ./libcurl-linear/libcurl-linear.cabal { };
          });
      };
    };
}
