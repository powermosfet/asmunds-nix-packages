{ pkgs ? import <nixpkgs> {}
, git
}:

pkgs.runCommand ''
  echo "Cloning repo"
  ${git} clone https://github.com/espressif/ESP8266_RTOS_SDK.git

  echo "Checking out correct branch"
  ${git} checkout release/v3.3

  echo "Initializing submodules"
  ${git} submodule update --init

  echo "Copying files"
  mkdir $out
  cp -R ESP8266_RTOS_SDK/* $out
''
