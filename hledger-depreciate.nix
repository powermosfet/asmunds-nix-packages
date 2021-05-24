{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "hledger-depreciate";
    rev = "17d60b14bffc1975c3ddc5a85ab84dfda26cc5df";
    sha256 = "1pjackrr5qhakff9g7rxj807533pv22rrs0slda6drmw4jv031pm";
  };

in
  import src { }
