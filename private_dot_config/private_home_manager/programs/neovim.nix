{ pkgs, lib, ... }:
{
  programs.neovim = {
    enable = true;

    defaultEditor = true;

    withNodeJs = true;
    withPython3 = true;

    viAlias = true;
    vimAlias = true;
    
    plugins = with pkgs.vimPlugins; [
      lazy-nvim
    ];
    
   extraPackages = with pkgs; [
      fzf
      ripgrep
      gcc
      luajit

      lua-language-server
      nil
      nixd

      # deno

      nixpkgs-fmt
      stylua

      emmet-ls
      tree-sitter
      wget
      prettierd

      jdk

      php
      php.packages.composer
      #php.packages.php-cs-fixer
    ];
  };
}
