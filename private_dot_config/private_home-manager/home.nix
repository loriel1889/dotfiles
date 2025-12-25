{ ... }:
{
  imports = [
    ./programs.nix
  ];

  home = {
    username = "loriel";
    homeDirectory = "/home/loriel";

    sessionPath = [
      "$HOME/.local/bin"
      "$HOME/go/bin"
    ];

    preferXdgDirectories = true;
    stateVersion = "24.11"; # Please read the comment before changing.
  };

  targets.genericLinux.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
