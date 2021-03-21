{ pkgs: import <nixpkgs> { } }:
let
  callPackage = newScope {
    overrides = pkgs.haskell.packageOverrides;
  };
in
{
  hledger-match = callPackage ./hledger-match.nix { };
}
