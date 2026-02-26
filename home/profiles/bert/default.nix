{ config, pkgs, lib, ... }:

{
  # Identity
  home.username = "bert";
  home.homeDirectory = "/home/bert";

  imports = [
    # Terminal/Shells
    ../../terminal/ghostty.nix
    ../../shell/zsh.nix

    # Cli tools
    ../../tools/direnv.nix
    ../../tools/git.nix
    ../../tools/cli_packages.nix


    ## Programs
    ../../apps/obsidian.nix
    ../../apps/firefox.nix
  ];

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Don't change
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

