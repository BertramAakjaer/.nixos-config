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
    # Terminal/Shells
    ../../terminal/ghostty.nix
    ../../shell/zsh.nix


    ## Programs
    ../../apps/obsidian.nix
  ];



  # Exempel på program

  programs =
    {
      git = {
        enable = true;
        lfs.enable = true;

        settings = {
          user = {
            name = "Bertram Aakjær";
            email = "89650492+BertramAakjaer@users.noreply.github.com";
          };
          init.defaultBranch = "main";
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

