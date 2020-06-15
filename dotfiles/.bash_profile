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

# MacPorts Installer addition on 2015-09-26_at_14:18:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$HOME/bin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH="/usr/local/sbin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
