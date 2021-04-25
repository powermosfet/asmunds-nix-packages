{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "hledger-match";
    rev = "70e00e918087bbb30c3d253923a22c9196a4b03b";
    sha256 = "0qyqrz7gpvm0p2smh739j11l2dq4ii7dk0ny3qs2633p79ijar6m";
  };

in
  import src { }
