{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = "\
      eval \"$(atuin init zsh)\"
      export LD_LIBRARY_PATH=${pkgs.wayland}/lib:$LD_LIBRARY_PATH
      if (( $+commands[wsl2-ssh-agent] )); then eval $(wsl2-ssh-agent); fi
      ";

    shellAliases = {
      docker = "sudo docker";
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

      komorebic = "komorebic.exe";
      komorebi-start = "komorebic start --whkd";
      komorebi-stop = "komorebic stop --whkd";
      komorebi-reload = "komorebi-stop && komorebi-start";
      komorebi-log = "komorebic log";

      yasbc = "yasbc.exe";
      yasb-log = "yasbc log";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "nvm"
        "sudo"
        "docker"
        "z"
      ];
    };

  };
}
