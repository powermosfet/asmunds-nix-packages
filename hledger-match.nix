{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "hledger-match";
    rev = "1ba160299f149c18e05324adaa21ae565c314bdd";
    sha256 = "08a1y28dmjyq8f62x12ygwnrk866y86qd7hc3n77zjr03v0cqidf";
  };

in
  import src { pkgs = pkgs; }
