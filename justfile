style:
  git diff --name-only | grep -E "\.hs" | xargs -I {} fourmolu --mode inplace {}
  git diff --name-only | grep -E "\.nix" | xargs -I {} nixfmt {}
  git diff --name-only | grep -E "\.py" | xargs -I {} ruff {}
  git diff --name-only | grep -E "\.cabal" | xargs -I {} cabal-fmt -i {}

build:
  cabal build all

test:
  cabal test
