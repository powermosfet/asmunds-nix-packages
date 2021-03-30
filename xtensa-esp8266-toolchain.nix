{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "nix-xtensa-esp8266-toolchain";
    rev = "9c6f78cc1ec02b2ad2e5022ee380e9d14461046a";
    sha256 = "0r8vnfh7pk2flq1mrkfnc73zjmhx1bx9082gy3zcxxc38r4794xc";
  };

in
  import src { }
