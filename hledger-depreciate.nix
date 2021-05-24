{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "hledger-depreciate";
    rev = "de10d9604dc49281e62bad2ad3aad3f5c940841c";
    sha256 = "18kgnhwh0dvaxs7zqgwv3k9ryl2vp21y882qjmzr5kfn2vsmdgj9";
  };

in
  import src { }
