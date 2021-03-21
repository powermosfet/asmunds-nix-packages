{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "hledger-match";
    rev = "3909493a7b80788efe5040ce0450abf162154e6c";
    sha256 = "0r8vnfh7pk2flq1mrkfnc73zjmhx1bx9082gy3zcxxc38r4794xc";
  };

in
  import src { }
