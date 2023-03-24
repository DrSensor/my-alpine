#!/bin/sh

echo === Prepare SHELL ===
apk add fish starship zoxide fzf
cp -r .config/fish ~/.config/
fish <(cat <<-fish
fish_add_path -p ~/.local/bin /usr/local/bin
fish_add_path -a /sbin
set -U COLORTERM truecolor

echo === Prepare EDITOR ===
apk add helix \
  tree-sitter-toml \
  tree-sitter-json \
  tree-sitter-typescript \
  tree-sitter-jsdoc \
  tree-sitter-javascript \
  tree-sitter-css \
  tree-sitter-html \
  tree-sitter-embedded-template \
  tree-sitter-lua \
  tree-sitter-go \
  tree-sitter-rust \
  tree-sitter-cpp \
  tree-sitter-c \
  tree-sitter-python \
  tree-sitter-make \
  tree-sitter-regex \
  tree-sitter-git-diff \
  tree-sitter-git-commit \
  tree-sitter-git-rebase \
  tree-sitter-bash
cp -r .config/helix ~/.config/
hx -g build
set -U EDITOR hx

echo === Prepare core-utils ===
apk add \
  bat viu exa \
  dust fclones \
  ripgrep miller \
  procs
  
echo === Prepare code-utils ===
apk add git delta tokei

fish
)