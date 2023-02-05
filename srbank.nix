{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitLab {
    owner = "asmundberge";
    repo  = "sr-bank-repl";
    rev = "0e1493c6393271b9c5f32105ad15e84a1204b797";
    sha256 = "sha256-s4vM1PJ1q72XicqJUatQtUz4HBdkx2LJYc1Vs/mpB5A=";
  };

in
  import src { pkgs = pkgs; }
