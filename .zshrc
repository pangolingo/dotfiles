# PATH CUSTOMIZATIONS
#--------------------------

# For RVM
# export PATH=$PATH:/Users/macbookpro1/.rvm/gems/ruby-2.0.0-p0/bin:/Users/macbookpro1/.rvm/gems/ruby-2.0.0-p0@global/bin:/Users/macbookpro1/.rvm/rubies/ruby-2.0.0-p0/bin:/Users/macbookpro1/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/macbookpro1/.rvm/bin

# add global php composer libs to path
export PATH=$PATH:~/.composer/vendor/bin

# Setting PATH for Python 2.7
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# add MAMP php to path
export PATH=/Applications/MAMP/bin/php/php5.4.10/bin:$PATH

# add Go language to path
export PATH=$PATH:$HOME/.rvm/opt/go/libexec/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# MacPorts Installer addition on 2013-05-07_at_10:28:20: adding an appropriate PATH variable for use with MacPorts.
# commented this out on 2016-01-20 to see if it breaks anything, since i no longer us macports
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# add homebrew bins to the start of path
export PATH="/usr/local/bin:$PATH"

# add pip/python apps path
export PATH=$HOME/Library/Python/2.7/bin:$PATH

# add visual studio code to the path
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# OTHER ENV VARIABLES
#--------------------------

# For Imagemagick
export PKG_CONFIG_PATH="/Users/macbookpro1/.homebrew/Cellar/imagemagick/6.8.7-0/lib/pkgconfig:$PKG_CONFIG_PATH"

#Default editor
export EDITOR="/usr/bin/vim"

# ZSH SETTINGS
#--------------------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dave-custom"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# load oh-my-zsh settings
source $ZSH/oh-my-zsh.sh

# ALIASES
#--------------------------

# restart virtualbox (in case it won't load)
alias vbrestart="sudo /Library/StartupItems/VirtualBox/VirtualBox restart"

# prompt before overwriting files
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# create a directory and go inside it
mkcd () {
  mkdir "$1"
  cd "$1"
}

# for generating password: makes an 8 character PW
alias password="openssl rand -base64 6"

# for bundle exec
alias be="bundle exec "

# clear spotify cache
alias clear-spotify-cache="rm -rf ~/Library/Caches/com.spotify.client/Data"

# alias to MAMP mysql
# disabled now that we use homebrew's mysql
# alias mysql="/Applications/MAMP/Library/bin/mysql"
# alias mysqladmin="/Applications/MAMP/Library/bin/mysqladmn"
# alias mysqldump="/Applications/MAMP/Library/bin/mysqldump"

# disable some zsh autocorrections
alias vagrant='nocorrect vagrant'
alias subl='nocorrect subl'

# love2d
alias love='/Applications/love.app/Contents/MacOS/love'

# VARIABLES AND FUNCTIONS AND MISC
#--------------------------

# restart Virtualbox
alias vbrestart2='sudo "/Library/Application Support/VirtualBox/LaunchDaemons/VirtualBoxStartup.sh" restart'

# shortcut to MAMP directory
mamp=~/Documents/MAMPserver/

function cdl () {
	cd "$@" && ls
}

# work with a git repo in my hoem directory which stores dotfiles
# dotfiles are in home and git is set up in ~/dotfiles
alias gitdotfiles='/usr/bin/git --git-dir=/Users/diverson/dotfiles/ --work-tree=/Users/diverson'
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
