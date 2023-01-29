{ pkgs ? import <nixPkgs> { } }:
let
  src = pkgs.fetchFromGitHub {
    owner = "powermosfet";
    repo  = "hledger-depreciate";
    rev = "99901b1b320244d58dfba7b17cc1347633fbc6cd";
    sha256 = "0pj51masi1kc0vqp80g6ppxlqa5msdk1gn5ysh0mzhj5gfh0x9qp";
  };

in
  import src { pkgs = pkgs; }
