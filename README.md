# Bryant's Dotfiles!
## What does it include?
* zsh to replace that bash crap
* A dope vim setup with a bunch of plugins
* `asciinema` - Tool to record terminal for demos
```bash
$ asciinema rec cast.json
<do stuff>
CTRL-D to stop
cat cast.json | svg-term --out myrec.svg
```

* Hyperfine - A sweet benchmarking utility
```bash
hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' 'grep -R TODO *'
```

* Z - A tool to jump around and remember directories you use a lot
```bash
$ z starfish
```

* fzf - Fuzzy search that lets you quickly find stuff
```bash
$ vim **<TAB>
```

* fd - A faster way to find files than plain old `find . -name STUFF`
```bash
fd PATTERN
```

* ripgrep - A faster way to grep for stuff
```bash
rg PATTERN
```

# Installation
## Install Main Stuff
```
./install.sh
```

## Install COC.NVIM
```
:call coc#util#install()
```

