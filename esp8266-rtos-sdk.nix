{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  version = "v3.4.0";
  name = "esp8266-rtos-sdk";
  src = pkgs.fetchFromGitHub {
    owner = "espressif";
    repo  = "ESP8266_RTOS_SDK";
    rev = "4ce354c4686ee75c54abb57c5031f9226436fa7b";
    sha256 = "1m2lnjs1bdjq3p88wa7x7w5lq73w4ndza3d2z5sk3qr8ld1m4m6g";
  };

  dontConfigure = true;
  dontBuild = true;
  installPhase = ''
      mkdir $out
      cp -R * $out
  '';
  dontStrip = true;
}
