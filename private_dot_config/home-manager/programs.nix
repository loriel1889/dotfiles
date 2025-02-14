{ pkgs, ... }:
{
  imports = [
    ./programs/bash.nix
    ./programs/neovim.nix
    ./programs/starship.nix
    ./programs/zsh.nix
  ];

  programs = {
    btop.enable = true;
    eza.enable = true;
    bat.enable = true;
    bottom.enable = true;
    ripgrep.enable = true;
    lazygit.enable = true;
  };

  home.packages = with pkgs; [
    glfw
    volta
    cargo
    tailspin
    unzip
    lua5_1
    luarocks
    gdu
    nodejs
    nodePackages.vscode-json-languageserver
    nodePackages.vscode-langservers-extracted
    nodePackages.prettier
    mdp
    zellij
    atuin
    android-tools
    android-udev-rules
  ];
}
