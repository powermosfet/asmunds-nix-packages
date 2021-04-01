{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  version = "v5.2.0";
  name = "xtensa-esp8266-toolchain";
  src = builtins.fetchTarball {
    url = "https://dl.espressif.com/dl/xtensa-lx106-elf-linux64-1.22.0-100-ge567ec7-5.2.0.tar.gz";
    sha256 = "0nga2x064jaslqq35wxi2ssrh9rgs3f3gj5pkri0d2p7nmd8ilk7";
  };

  dontConfigure = true;
  dontBuild = true;
  installPhase = ''
      mkdir $out
      cp -R * $out
  '';
  dontStrip = true;
}
