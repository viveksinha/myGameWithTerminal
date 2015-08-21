## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/myGameWithTerminal`, with `~/myGameWithTerminal` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/wiki05/myGameWithTerminal.git && cd myGameWithTerminal && source bootstrap.sh
```

To update, `cd` into your local `myGameWithTerminal` repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Git-free install

To install these bash files without Git:

```bash
cd; curl -#L https://github.com/wiki05/myGameWithTerminal/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE-MIT.txt}
```

To update later on, just run that command again.

$Happy Coding
