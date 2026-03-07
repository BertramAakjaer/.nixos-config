{ config, pkgs, lib, ... }: {

  services.tailscale = {
    enable = true;
  };


  # Firewall
  networking.firewall.allowedUDPPorts = [ config.services.tailscale.port ];
  networking.firewall.trustedInterfaces = [ "tailscale0" ];
}
