let
  bootstrap = import <nixpkgs> { };

  src = bootstrap.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "hledger-match";
    inherit (nixpkgs) rev sha256;
  };

  pkgs = import src { };

in
  pkgs.haskellPackages.callPackage ./hledger-match.nix { }
