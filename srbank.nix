{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitLab {
    owner = "asmundberge";
    repo  = "sr-bank-repl";
    rev = "4ad9dfb1f439e3cf9a03bf82ec3f20c5939aa281";
    sha256 = "08zmwi3qjjy8xkzkbckb792by7049ci18g9kpkr476113ypq6yfq";
  };

in
  import src { }
