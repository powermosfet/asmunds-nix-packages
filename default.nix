{ pkgs ? import <nixpkgs> { } }:
{
  hledger-match = pkgs.callPackage ./hledger-match.nix { pkgs = pkgs; };
  srbank = pkgs.callPackage ./srbank.nix { pkgs = pkgs; };
  xtensa-esp8266-toolchain = pkgs.callPackage ./xtensa-esp8266-toolchain.nix { pkgs = pkgs; };
  esp8266-rtos-sdk = pkgs.callPackage ./esp8266-rtos-sdk.nix { pkgs = pkgs; };
  hledger-depreciate = pkgs.callPackage ./hledger-depreciate.nix { pkgs = pkgs; };
}
