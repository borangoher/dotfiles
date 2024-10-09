#!/bin/nu

let dirs = ls | where name != keyd and type == dir | get name

$dirs | each {|dirname| rm -rf $"($env.XDG_CONFIG_HOME)/($dirname)"}
$dirs | each {|dirname| ln -s $"($env.DOTFILES)/($dirname)" $env.XDG_CONFIG_HOME}

# keyd goes to /etc
sudo rm -rf /etc/keyd
sudo ln -s $"($env.DOTFILES)/keyd" /etc
