# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# Reload aliases file
if [ -f ~/.bash_alias ]; then
    . ~/.bash_alias
fi 
# Reload functions file
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
# Reload git alias file
if [ -f ~/.bash_git ]; then
    . ~/.bash_git
fi
#Reload git credentials
if [ -f ~/.git_credentials ]; then
	. ~/.git_credentials
fi
#Reload bash credentials
if [ -f ~/.bash_credentials ]; then
	. ~/.bash_credentials
fi
#Reload bash prompt
if [ -f ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi

##
# Your previous /Users/vivek/.bash_profile file was backed up as /Users/vivek/.bash_profile.macports-saved_2015-09-26_at_14:18:34
##

#export JAVA_OPTS="-Xms756M -Xmx4056M -Xss128M -Xmn712M"

# MacPorts Installer addition on 2015-09-26_at_14:18:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$HOME/bin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin


##
# Your previous /Users/vivek/.bash_profile file was backed up as /Users/vivek/.bash_profile.macports-saved_2016-08-13_at_10:27:43
##

# MacPorts Installer addition on 2016-08-13_at_10:27:43: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:~/.nexustools

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/vivek/LabJARVIS/google/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/vivek/LabJARVIS/google/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/vivek/LabJARVIS/google/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/vivek/LabJARVIS/google/google-cloud-sdk/completion.bash.inc'
fi

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
