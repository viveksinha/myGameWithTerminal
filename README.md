# myGameWithTerminal

Installation

Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in ~/Documents/myGame, with ~/myGame as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

git clone https://github.com/wiki05/myGameWithTerminal.git && cd myGameWithTerminal && source bootstrap.sh
To update, cd into your local dotfiles repository and then:

source bootstrap.sh
Alternatively, to update while avoiding the confirmation prompt:

set -- -f; source bootstrap.sh
Git-free install

To install these bashFiles without Git:

cd; curl -#L https://github.com/wiki05/myGameWithTerminal/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE-MIT.txt}
To update later on, just run that command again

Your Contribution will be appreciated!

Happy Coding!
