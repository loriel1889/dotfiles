{ ... }:
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;

    settings = {
      add_newline = false;
      command_timeout = 750;

      character = {
        success_symbol = "[\\$](bold green)";
        error_symbol = "[\\$](bold red)";
      };

      username = {
        show_always = true;
        format = "[$user]($style)";
      };

      hostname = {
        ssh_only = false;
        format = "[@](bold cyan)[$hostname]($style) ";
      };

      directory = {
        format = "in [$path]($style) ";
      };

      status.disabled = true;
    };
  };
}
