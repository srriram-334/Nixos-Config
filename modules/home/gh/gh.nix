{...}:
{
  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
    hosts = {
      "github.com" = {
          user = "srriram-334";
        };
     }; 
    settings.git_protocol = "https";
   };

}
