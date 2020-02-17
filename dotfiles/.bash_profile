# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
# for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
# 	[ -r "$file" ] && [ -f "$file" ] && source "$file";
# done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
# shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
# shopt -s histappend;

# Autocorrect typos in path names when using `cd`
# shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
# if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
# 	source "$(brew --prefix)/share/bash-completion/bash_completion";
# elif [ -f /etc/bash_completion ]; then
# 	source /etc/bash_completion;
# fi;

# Enable tab completion for `g` by marking it as an alias for `git`
# if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
# 	complete -o default -o nospace -F _git g;
# fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
# [ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
# complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
# complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# Reload aliases file
if [ -f ~/.bash_alias_0 ]; then
    . ~/.bash_alias_0
fi

# Reload functions file
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
# Reload git alias file
if [ -f ~/.bash_git ]; then
    . ~/.bash_git
fi
#Reload bash prompt
if [ -f ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi
#Reload work related aliases
if [ -f ~/.bash_work ]; then
	. ~/.bash_work
fi
#Reload work related aliases
if [ -f ~/.bash_functions_work ]; then
	. ~/.bash_functions_work
fi
##
# Your previous /Users/vivek/.bash_profile file was backed up as /Users/vivek/.bash_profile.macports-saved_2015-09-26_at_14:18:34
##

#export JAVA_OPTS="-Xms756M -Xmx4056M -Xss128M -Xmn712M"

# MacPorts Installer addition on 2015-09-26_at_14:18:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$HOME/bin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/Users/wiki/work/jarvis/myGame/myGameWithTerminal/scripts
export OPENSSL_DIR=/usr/local/Cellar/openssl/1.0.2n
# export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
# export PATH=$PATH:/opt/apache-maven/bin
# export PATH=$PATH:/usr/local/Cellar/git/2.19.1/bin
export PATH="/usr/local/opt/node@10/bin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# export PATH="/usr/local/Cellar/mysql@5.7/5.7.29/bin:$PATH"
# alias mysql='/usr/local/Cellar/mysql@5.7/5.7.29/bin/mysql'
