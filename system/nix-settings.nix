{ ... }: {
  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 10d";
  };

  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
    allowReboot = false;

    flake = "/home/bert/.nixos-config";

    flags = [
      "--update-input"
      "nixpkgs"
      "--commit-lock-file"
    ];
  };

  nixpkgs.config.allowUnfree = true;
}
