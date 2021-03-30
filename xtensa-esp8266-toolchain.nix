{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "nix-xtensa-esp8266-toolchain";
    rev = "592a305dba108adf38f0d48c2e2b10e14acc83fa";
    sha256 = "0r8vnfh7pk2flq1mrkfnc73zjmhx1bx9082gy3zcxxc38r4794xc";
  };

in
  import src { }
