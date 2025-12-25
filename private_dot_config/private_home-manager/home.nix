{ ... }:
{
  imports = [
    ./programs.nix
  ];

  home.username = "loriel";
  home.homeDirectory = "/home/loriel";

  home.preferXdgDirectories = true;

  home.stateVersion = "24.11"; # Please read the comment before changing.

  targets.genericLinux.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
