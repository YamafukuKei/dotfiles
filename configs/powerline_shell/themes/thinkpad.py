from powerline_shell.themes.default import DefaultColor

black = 16
white = 231

red = 1
darkestred = 52
darkred = 88
mediumred = 124
brightred = 160
brightestred = 196

gray0 = 233
gray1 = 235
gray2 = 236
gray3 = 239
gray4 = 240
gray5 = 241
gray10 = 252

class Color(DefaultColor):
    USERNAME_FG = brightestred # User name font color
    USERNAME_BG = black # User name background color
    USERNAME_ROOT_BG = 100 # ?

    HOSTNAME_FG = 10 # ?
    HOSTNAME_BG = 30 # ?

    HOME_SPECIAL_DISPLAY = True
    HOME_BG = 150 # ?
    HOME_FG = 100 # ?
    PATH_FG = 100 # ?
    PATH_BG = gray0 # background color to path from home
    CWD_FG = brightestred # current directory font color
    SEPARATOR_FG = brightestred

    READONLY_BG = 150 # ?
    READONLY_FG = 50 # ?

    REPO_CLEAN_FG = gray10 # git branch name color on clean state
    REPO_CLEAN_BG = gray4 # git branch name background color on clean state
    REPO_DIRTY_FG = brightestred # git branch name color on change state
    REPO_DIRTY_BG = gray4 # git branch name background color on change state

    JOBS_FG = 1
    JOBS_BG = 250

    CMD_PASSED_FG = red # $ color when command success
    CMD_PASSED_BG = black # $ background color when command success
    CMD_FAILED_FG = brightestred # $ color when command failed
    CMD_FAILED_BG = black # $ backgroud color when command failed

    SVN_CHANGES_FG = REPO_DIRTY_FG
    SVN_CHANGES_BG = REPO_DIRTY_BG

    GIT_AHEAD_BG = brightestred
    GIT_AHEAD_FG = white
    GIT_BEHIND_BG = darkestred
    GIT_BEHIND_FG = white
    GIT_STAGED_BG = darkestred
    GIT_STAGED_FG = white
    GIT_NOTSTAGED_BG = gray0
    GIT_NOTSTAGED_FG = red
    GIT_UNTRACKED_BG = gray3
    GIT_UNTRACKED_FG = brightestred
    GIT_CONFLICTED_BG = brightestred
    GIT_CONFLICTED_FG = black

    GIT_STASH_BG = gray5
    GIT_STASH_FG = darkred

    VIRTUAL_ENV_BG = 30
    VIRTUAL_ENV_FG = 2

    AWS_PROFILE_FG = 20
    AWS_PROFILE_BG = 2

    TIME_FG = 15
    TIME_BG = 10
