from powerline_shell.themes.default import DefaultColor

black = 16
white = 231

red = 1
darkestred = 52
darkred = 88
mediumred = 124
brightred = 160
brightestred = 196

darkestblue = 24
darkblue = 31

limeyellow0 = 3
limeyellow1 = 6
yellow = 11
brightyellow = 220

darkestcyan = 23
darkcyan = 74
mediumcyan = 117
brightcyan = 159

green = 2
darkestgreen = 22
darkgreen = 28
mediumgreen = 70
brightgreen = 148

darkestpurple = 55

gray0 = 233
gray1 = 235
gray2 = 236
gray3 = 239
gray4 = 240
gray5 = 241
gray6 = 244
gray7 = 245
gray8 = 247
gray9 = 250
gray10 = 252

class Color(DefaultColor):
    USERNAME_FG = yellow # User name font color
    USERNAME_BG = darkestblue # User name background color
    USERNAME_ROOT_BG = 100 # ?

    HOSTNAME_FG = 10 # ?
    HOSTNAME_BG = 30 # ?

    HOME_SPECIAL_DISPLAY = True
    HOME_BG = 150 # ?
    HOME_FG = 100 # ?
    PATH_FG = 100 # ?
    PATH_BG = limeyellow1 # background color to path from home
    CWD_FG = gray0 # current directory font color
    SEPARATOR_FG = gray0

    READONLY_BG = 150 # ?
    READONLY_FG = 50 # ?

    REPO_CLEAN_FG = yellow # git branch name color on clean state
    REPO_CLEAN_BG = darkestblue # git branch name background color on clean state
    REPO_DIRTY_FG = green # git branch name color on change state
    REPO_DIRTY_BG = darkestblue # git branch name background color on change state

    JOBS_FG = 1
    JOBS_BG = 250

    CMD_PASSED_FG = yellow # $ color when command success
    CMD_PASSED_BG = darkestblue # $ background color when command success
    CMD_FAILED_FG = brightestred # $ color when command failed
    CMD_FAILED_BG = black # $ backgroud color when command failed

    SVN_CHANGES_FG = REPO_DIRTY_FG
    SVN_CHANGES_BG = REPO_DIRTY_BG

    GIT_AHEAD_BG = yellow
    GIT_AHEAD_FG = darkblue
    GIT_BEHIND_BG = green
    GIT_BEHIND_FG = limeyellow0
    GIT_STAGED_BG = brightyellow
    GIT_STAGED_FG = green
    GIT_NOTSTAGED_BG = darkcyan
    GIT_NOTSTAGED_FG = white
    GIT_UNTRACKED_BG = yellow
    GIT_UNTRACKED_FG = darkblue
    GIT_CONFLICTED_BG = brightestred
    GIT_CONFLICTED_FG = black

    GIT_STASH_BG = darkgreen
    GIT_STASH_FG = yellow

    VIRTUAL_ENV_BG = black
    VIRTUAL_ENV_FG = brightestred

    AWS_PROFILE_FG = 20
    AWS_PROFILE_BG = 2

    TIME_FG = 15
    TIME_BG = 10
