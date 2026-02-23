{ config, pkgs, lib, ... }: {

  services.resilio = {
    enable = true;

    enableWebUI = true;
    deviceName = config.networking.hostName;

    directoryRoot = "/home/bert/sync";
    storagePath = "/home/bert/.config/resilio-sync";

  };

  systemd.services.resilio.serviceConfig = {
    User = lib.mkForce "bert";
    group = lib.mkForce "users";
  };
}
