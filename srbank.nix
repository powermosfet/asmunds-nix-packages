{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitLab {
    owner = "asmundberge";
    repo  = "sr-bank-repl";
    rev = "4520323153c5117f61210eea9f9cfbb2ccb38248";
    sha256 = "sha256-4eraierUDOrQ+mSb6fAME9uuVJO+IezOxt1SjDhNWhk=";
  };

in
  import src { pkgs = pkgs; }
