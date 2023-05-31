# init

When you live in a command line, configurations are a deeply personal thing. They are often crafted over years of experience, battles lost, lessons learned, advice followed, and ingenuity rewarded. When you are away from your own configurations, you are an orphaned refugee in unfamiliar and hostile surroundings. You feel clumsy and out of sorts. You are filled with a sense of longing to be back in a place you know. A place you built. A place where all the short-cuts have been worn bare by your own travels. A place you proudly call… `$HOME`.

> Credit for the above beatifull text goes to the YADM team even though I don't use it to manage my dotfiles. I prefer to use stow.

## What is init

Collection of config files and scripts to setup a new machine.

## Usage

Before using init you need to install ansible and make sure you have sorted out ssh keys.

    ansible-playbook local.yml --ask-vault-pass
