{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "hledger-match";
    rev = "70e00e918087bbb30c3d253923a22c9196a4b03b";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };

in
  import src { }
