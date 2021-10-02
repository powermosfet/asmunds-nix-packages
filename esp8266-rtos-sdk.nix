{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  version = "v3.4.0";
  name = "esp8266-rtos-sdk";
  src = pkgs.fetchFromGitHub {
    owner = "espressif";
    repo  = "ESP8266_RTOS_SDK";
    rev = "23a225a5c38fc53d544043f9750c8151fae4e5d6";
    sha256 = "0ssc5d781z1yb4v6c5ifql3n4lb2f3bxx02544hxdfzx8qjd6xsf";
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
