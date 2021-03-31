{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  version = "v8.4.0";
  name = "xtensa-esp8266-toolchain";
  src = builtins.fetchTarball {
    url = "https://dl.espressif.com/dl/xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz";
    sha256 = "1w11nl02hp2sg0pmykq67c4s9nlbbkikf6x2zs1lvp5i2jk3knpa";
  };

  dontConfigure = true;
  dontBuild = true;
  installPhase = ''
      mkdir $out
      cp -R * $out
  '';
  dontStrip = true;
}
