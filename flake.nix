{
  description = "Haskell Template using cabal2nix";

  inputs = {
    nixpkgs.url = "flake:nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    let
      ghcVer = "ghc910";
      # FIXME: Change this to the package name.
      package = "template-hs";
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

      out =
        system:
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [ self.overlays.default ];
            # config.allowBroken = true;
          };

          haskellPackages = pkgs.haskell.packages.${ghcVer};
          devUtils =
            with pkgs;
            [ just ]
            ++ (with haskellPackages; [
              fourmolu
              haskell-language-server
              ghcid
              cabal-fmt
              nixfmt
            ]);

          commonDeps = [ haskellPackages.cabal-install ];
        in
        {
          packages = {
            default = "${package}";
            ${package} = pkgs.haskell.packages.${ghcVer}.${package};
          };

          devShells.minimal = haskellPackages.shellFor {
            packages = p: [
              self.packages.${system}.${package}
            ];
            withHoogle = false;
            buildInputs = commonDeps;
          };

          devShells.default = haskellPackages.shellFor {
            packages = p: [
              self.packages.${system}.${package}
            ];
            withHoogle = false;
            buildInputs = devUtils ++ commonDeps;
          };
        };
    in
    flake-utils.lib.eachDefaultSystem out
    // {
      overlays = {
        default = makeOverlay (
          super: self: with self; {
            ${package} = callCabal2nix "${package}" ./. { };
          }
        );
      };
    };
}
