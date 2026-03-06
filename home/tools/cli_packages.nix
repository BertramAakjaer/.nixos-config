{ config, pkgs, ... }:
{
  # User packages
  home.packages = with pkgs; [
    yazi
    ripgrep
    wget
    curl

    nil
    neofetch

    nixpkgs-fmt
    vscode-fhs
  ];
}
