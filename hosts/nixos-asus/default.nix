{ config, pkgs, lib, ... }: {
  networking.hostName = "nixos-asus"; # Define your hostname.


  imports =
    [
      ./hardware-configuration.nix
      ../../system/core.nix

      ../../system/bootloaders/grub.nix
      ../../system/audio.nix

      ../../system/desktopManagers/gnome.nix

      ../../services/resilio_sync_personal.nix

      # theme
      ../../themes/original.nix
    ];


  # zsh config
  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;


  # Enable CUPS to print documents.
  services.printing.enable = true;


  fonts.packages = with pkgs; [ ]; # Fonts

  # users
  users.users = {
    bert = {
      isNormalUser = true;
      description = "Bertram Aakjær";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?
}
