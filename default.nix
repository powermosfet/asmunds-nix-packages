{ pkgs ? import <nixpkgs> { } }:
{
  hledger-match = pkgs.callPackage ./hledger-match.nix { };
}
