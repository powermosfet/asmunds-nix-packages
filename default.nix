{ pkgs }:
{
  hledger-match = pkgs.haskellPackages.callPackage ./hledger-match.nix { };
}
