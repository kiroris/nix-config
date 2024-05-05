{ myvars, ... }: {

#  ██████╗ ██╗████████╗
# ██╔════╝ ██║╚══██╔══╝
# ██║  ███╗██║   ██║   
# ██║   ██║██║   ██║   
# ╚██████╔╝██║   ██║   
#  ╚═════╝ ╚═╝   ╚═╝   

  # Base git settings.
  programs.git = {

    # Git enable.
    enable = true;

    # Lfs enable.
    lfs.enable = true;

    # Set userName and userEmail for git.
    userName = "${myvars.nickname}";
    userEmail = "${myvars.useremail}";

    # Setting up an additional configuration.
    extraConfig = {

      # Set default branch for repositories.
      init.defaultBranch = "main";

      #push.autoSetupRemote = true;
      #pull.rebase = true;

      # Replace https with ssh.
      url = {

        "ssh://git@github.com/kiroris" = {
          insteadOf = "https://github.com/kiroris";
        };

        # "ssh://git@gitlab.com/" = {
        #   insteadOf = "https://gitlab.com/";
        # };

        # "ssh://git@bitbucket.com/" = {
        #   insteadOf = "https://bitbucket.com/";
        # };

      };

    };


    # Aliases for git.
    aliases = {

      cl = "clone";
      s = "status";
      ci = "commit";
      br = "branch";
      co = "checkout";
      cm = "commit -m"; # Commit via `git cm <message>`.
      ca = "commit -am"; # Commit all changes via `git ca <message>`.
      dc = "diff --cached";
      
      # Aliases for log.
      ls = "log --pretty=format:\"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]\" --decorate";
      ll = "log --pretty=format:\"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]\" --decorate --numstat";

      # Aliases for submodule.
      update = "submodule update --init --recursive";
      foreach = "submodule foreach";

      amend = "commit --amend -m"; # Amend commit message via `git amend <message>`.
      unstage = "reset HEAD --"; # Unstage file via `git unstage <file>`.
      merged = "branch --merged"; # List merged(into HEAD) branches via `git merged`.
      unmerged = "branch --no-merged"; # List unmerged(into HEAD) branches via `git unmerged`.
      nonexist = "remote prune origin --dry-run"; # List non-exist(remote) branches via `git nonexist`.

      # Delete merged branches except master & dev & staging.
      #  `!` Indicates it's a shell script, not a git subcommand.
      delmerged = ''! git branch --merged | egrep -v "(^\*|main|master|dev|staging)" | xargs git branch -d'';
      # Delete non-exist(remote) branches.
      delnonexist = "remote prune origin";

    };

  };

}
