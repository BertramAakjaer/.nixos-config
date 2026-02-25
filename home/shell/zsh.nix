{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      lll = "ls -a";
      ".." = "cd ..";


      # Machines update comments
      byg-asus = "cd ~/.nixos-config && git add . && sudo nixos-rebuild switch --flake .#nixos-asus && git add flake.lock";
      byg-asus-update = "cd ~/.nixos-config && nix flake update && git add . && sudo nixos-rebuild switch --flake .#nixos-asus && git add flake.lock";
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
    };
  };
}
