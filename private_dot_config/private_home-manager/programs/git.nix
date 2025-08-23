{ ... }
{
  programs.git = {
    enable = true;

    userName  = "loriel";
    userEmail = "anthony@helladan.io";

    signing = {
      signByDefalut = true;
    };
  };
}
