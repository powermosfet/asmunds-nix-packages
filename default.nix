{ pkgs ? import <nixpkgs> { } }:
{
  hledger-match = pkgs.haskellPackages.callPackage ./hledger-match.nix { };
}
