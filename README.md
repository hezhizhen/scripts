# scripts

## Installation

To use these scripts:

1. clone this repository to somewhere like `~`
2. set environment variable `SCRIPTSPATH`
   1. zsh: `echo 'export SCRIPTSPATH=$HOME/scripts' >> .zshrc`
   2. fish: `echo 'set -gx SCRIPTSPATH $HOME/scripts' >> ~/.config/fish/config.fish`
3. add the directory to `$PATH`
   1. zsh: `echo 'export PATH=$PATH:$SCRIPTSPATH' >> .zshrc`
   2. fish: `echo 'set PATH $PATH $SCRIPTSPATH' >> ~/.config/fish/config.fish`

## Script List

1. [x] [diary.sh](diary.sh): generate diary template for the current day
2. [x] [onthisday.sh](onthisday.sh): list all the diaries on this day

## Troubleshooting

1. If some scripts couldn't be executed, run `chmod +x <script>` to grant execution permission.

## FAQ

1. `.sh` suffixes are preserved to avoid naming conflicts.
