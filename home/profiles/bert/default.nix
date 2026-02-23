{ config, pkgs, lib, ... }:

{
  # Identity
  home.username = "bert";
  home.homeDirectory = "/home/bert";


  # User packages
  home.packages = with pkgs; [
    lf
    vscode-fhs
    wget
    curl
    ripgrep
    nil
    nixpkgs-fmt
    neofetch
  ];

  imports = [
    ../../shell/zsh.nix
  ];



  # Exempel på program

  programs =
    {
      git = {
        enable = true;

        settings.user = {
          name = "Bertram Aakjær";
          email = "89650492+BertramAakjaer@users.noreply.github.com";
        };
      };
      firefox.enable = true;
      direnv.enable = true;
    };











  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Don't change
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

