{ pkgs ? import <nixpkgs> { } }:
{
  hledger-match = pkgs.callPackage ./hledger-match.nix { };
  srbank = pkgs.callPackage ./srbank.nix { };
  xtensa-esp8266-toolchain = pkgs.callPackage ./xtensa-esp8266-toolchain.nix { };
  esp8266-rtos-sdk = pkgs.callPackage ./esp8266-rtos-sdk.nix { };
  hledger-depreciate = pkgs.callPackage ./hledger-depreciate.nix { };
}
