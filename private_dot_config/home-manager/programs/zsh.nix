{ ... }:
{
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initExtra = "source $HOME/wsl2-ssh-agent-proxy/ubuntu.wsl2-ssh-agent-proxy.sh";

    shellAliases = {
      dcd = "docker compose down";
      dcu = "docker compose up";
      dcud = "dcu -d";
      dcdu = "dcd && dcud";
      dcl = "docker compose logs";
      dclf = "dcl -f";
      dcul = "dcud && dclf";
      dcdul = "dcd && dcul";

      dce = "docker compose exec";
      dceweb = "dce web";

      psyu = "sudo pacman -Syyu";

      ls = "exa";
      la = "ll -a";

      cat = "bat --paging=never";

      vim = "nvim";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "nvm"
        "sudo"
        "docker"
      ];

      # theme = "robbyrussell";
    };

  };
}
