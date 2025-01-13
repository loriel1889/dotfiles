{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;

    defaultEditor = true;

    withNodeJs = true;
    withPython3 = true;

    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      fzf
      ripgrep
      gcc
      luajit

      lua-language-server
      nil
      nixd

      nixpkgs-fmt
      stylua

      emmet-ls
      tree-sitter
      wget
      prettierd

      jdk

      php
      php.packages.composer
      php.packages.php-cs-fixer
    ];
  };
}
