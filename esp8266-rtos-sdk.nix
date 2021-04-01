{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  version = "v3.4.0";
  name = "esp8266-rtos-sdk";
  src = pkgs.fetchFromGitHub {
    owner = "espressif";
    repo  = "ESP8266_RTOS_SDK";
    rev = "4ce354c4686ee75c54abb57c5031f9226436fa7b";
    sha256 = "13bjjb1j9yqsrdl4gkcdcfranly1nxk4ccfd91bbgfkyv4693asl";
    fetchSubmodules = true;
  };

  dontConfigure = true;
  dontBuild = true;
  installPhase = ''
      mkdir $out
      cp -R * $out
  '';
  dontStrip = true;
}
