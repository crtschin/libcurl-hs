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
      ghcVer = "ghc910";
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

          curl = pkgs.curlFull;
          libcurl-bindings = pkgs.haskell.lib.compose.generateBindings
            ./libcurl-bindings/generate-bindings
            (haskellPackages.callCabal2nix "libcurl-bindings" ./libcurl-bindings
              { });

          libs = with pkgs; [
            pkg-config
            curl.dev
            llvmPackages.clang
            llvmPackages.libclang
            llvmPackages.llvm

            hsBindgenHook
            hs-bindgen-cli
          ];
          tools = with pkgs; [ just perl ];
          haskellTools = with haskellPackages; [
            cabal-fmt
            eventlog2html
            fourmolu
            ghc-prof-flamegraph
            ghcid
            haskell-language-server
            hp2pretty
            nixfmt
            profiteur
            threadscope
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
              export LIBCURL_PATH="${curl.dev}"
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
