{ pkgs ? import <nixpkgs> {} }:

let
  toolchain = import ./xtensa-esp8266-toolchain.nix { };
in

pkgs.stdenv.mkDerivation {
  version = "v3.4.0";
  name = "esp8266-rtos-sdk";
  src = pkgs.fetchFromGitHub {
    owner = "espressif";
    repo  = "ESP8266_RTOS_SDK";
    rev = "89a3f254b63819035f65d9c5dcdae8864f1a6a8a";
    sha256 = "1a47n8nch0xr9103n91vqbph54ap12p5xij2iv2m2xpxds4qiryz";
  };

  dontConfigure = true;
  dontBuild = true;
  installPhase = ''
      mkdir $out
      cp -R * $out
  '';
  dontStrip = true;
}
