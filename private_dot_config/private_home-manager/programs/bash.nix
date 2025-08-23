{ ... }:
{
  programs.bash = {
    enableCompletion = true;

    initExtra = "zsh";
  };
}
