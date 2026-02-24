{ config, pkgs, lib, ... }: {

  services.resilio = {
    enable = true;

    enableWebUI = true;
    deviceName = config.networking.hostName;
    httpListenAddr = "127.0.0.1";
    httpListenPort = 8888;
  };
}
