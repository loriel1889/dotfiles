{ ... }:
{
  imports = [
    ./programs.nix
  ];

  home = {
    username = builtins.getEnv("USER");
    homeDirectory = builtins.getEnv("HOME");

    sessionPath = [
      "$HOME/.local/bin"
    ];

    preferXdgDirectories = true;

    stateVersion = "24.11"; # Please read the comment before changing.
  };

  targets.genericLinux.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
