#/bin/bash

sudo dnf install -y ghc
sudo dnf install -y ghc-HUnit
sudo dnf install -y cabal-install
cabal update
cabal install HUnit
cabal install --lib HUnit
cabal install --lib base
