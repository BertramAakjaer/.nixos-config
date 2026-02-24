{ config, pkgs, lib, ... }: {

  services.resilio = {
    enable = true;

    enableWebUI = true;
    deviceName = config.networking.hostName;
  };

  # systemd.services.resilio.serviceConfig = {
  #   User = lib.mkForce "bert";
  #   group = lib.mkForce "users";
  #   ProtectHome = lib.mkForce false;
  #   ReadWritePaths = [ "/home/bert/.config/resilio-sync" ];
  # };
}
