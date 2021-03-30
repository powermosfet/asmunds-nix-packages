{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "nix-esp8266-rtos-sdk";
    rev = "a163b35b9c996fbac9324fcd39706a054a7f2dc3";
    sha256 = "1cjcc257r57biafws71ajpl7fgirc2c9imcrwg9m48bayr63adrv";
  };

in
  import src { }
