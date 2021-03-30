{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "nix-xtensa-esp8266-toolchain";
    rev = "2351eb8652a35fed6d53adb48ff5705c81b95264";
    sha256 = "0r8vnfh7pk2flq1mrkfnc73zjmhx1bx9082gy3zcxxc38r4794xc";
  };

in
  import src { }
