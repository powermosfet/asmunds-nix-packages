{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitLab {
    owner = "asmundberge";
    repo  = "sr-bank-repl";
    rev = "5de6c1ca2f7180b72f48c830d46fffa08b14a762";
    sha256 = "0313h68i4vwydn2s4ay9mkcm01q78m8dvppz1wmr32kcqz5dhvrf";
  };

in
  import src { }
