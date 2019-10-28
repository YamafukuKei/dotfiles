from powerline_shell.themes.default import DefaultColor


class Color(DefaultColor):
    USERNAME_FG = 200 # User name font color
    USERNAME_BG = 150 # User name background color
    USERNAME_ROOT_BG = 100 # ?

    HOSTNAME_FG = 10 # ?
    HOSTNAME_BG = 30 # ?

    HOME_SPECIAL_DISPLAY = True
    HOME_BG = 150 # ?
    HOME_FG = 100 # ?
    PATH_FG = 100 # ?
    PATH_BG = 20 # background color to path from home
    CWD_FG = 80 # current directory font color
    SEPARATOR_FG = 150

    READONLY_BG = 150 # ?
    READONLY_FG = 50 # ?

    REPO_CLEAN_FG = 80 # git branch name color on clean state
    REPO_CLEAN_BG = 200 # git branch name background color on clean state
    REPO_DIRTY_FG = 80 # git branch name color on change state
    REPO_DIRTY_BG = 20 # git branch name background color on change state

    JOBS_FG = 1
    JOBS_BG = 250

    CMD_PASSED_FG = 20 # $ color when command success
    CMD_PASSED_BG = 100 # $ background color when command success
    CMD_FAILED_FG = 15 # $ color when command failed
    CMD_FAILED_BG = 1 # $ backgroud color when command failed

    SVN_CHANGES_FG = REPO_DIRTY_FG
    SVN_CHANGES_BG = REPO_DIRTY_BG

    GIT_AHEAD_BG = 240
    GIT_AHEAD_FG = 250
    GIT_BEHIND_BG = 240
    GIT_BEHIND_FG = 250
    GIT_STAGED_BG = 22
    GIT_STAGED_FG = 15
    GIT_NOTSTAGED_BG = 130
    GIT_NOTSTAGED_FG = 15
    GIT_UNTRACKED_BG = 52
    GIT_UNTRACKED_FG = 15
    GIT_CONFLICTED_BG = 9
    GIT_CONFLICTED_FG = 15

    GIT_STASH_BG = 221
    GIT_STASH_FG = 0

    VIRTUAL_ENV_BG = 30
    VIRTUAL_ENV_FG = 2

    AWS_PROFILE_FG = 20
    AWS_PROFILE_BG = 2

    TIME_FG = 15
    TIME_BG = 10
