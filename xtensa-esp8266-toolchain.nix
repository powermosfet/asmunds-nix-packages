{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "nix-xtensa-esp8266-toolchain";
    rev = "2351eb8652a35fed6d53adb48ff5705c81b95264";
    sha256 = "157mp59964q190s5mfw26lkhppjbk982qcq720mbln1b2dc5lsw4";
  };

in
  import src { }
