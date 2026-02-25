{ config, pkgs, lib, ... }: {

  services.resilio = {
    enable = true;

    enableWebUI = true;
    deviceName = config.networking.hostName;
    httpListenAddr = "127.0.0.1";
    httpListenPort = 8888;

    # So the reislio with user perms can access it
    storagePath = "/home/bert/.config/resilio-sync";
  };

  systemd.services.resilio.serviceConfig = {
    User = lib.mkForce "bert";
    Group = lib.mkForce "users";

    # Disable systemd's default block on the /home directory
    ProtectHome = lib.mkForce false;

    ExecStartPre = [
      "+${pkgs.coreutils}/bin/chown -R bert:users /home/bert/.config/resilio-sync"
      "+${pkgs.coreutils}/bin/chmod -R u+rw /home/bert/.config/resilio-sync"
    ];
  };
}
