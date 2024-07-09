# init

When you live in a command line, configurations are a deeply personal thing. They are often crafted over years of experience, battles lost, lessons learned, advice followed, and ingenuity rewarded. When you are away from your own configurations, you are an orphaned refugee in unfamiliar and hostile surroundings. You feel clumsy and out of sorts. You are filled with a sense of longing to be back in a place you know. A place you built. A place where all the short-cuts have been worn bare by your own travels. A place you proudly call… `$HOME`.

> Credit for the above beautiful text goes to the YADM team even though I don't use it to manage my dotfiles. I prefer to use stow.

## What is init

This repository contains configurations (Terraform code, Ansible collections and shell scripts) for setting up and managing remote dev environments, local dev containers and new dev machines.

- Terraform modules to provision remote dev environments on Azure and AWS.
- Ansible playbooks to configure provisioned dev environments.

## Usage

Before using init you need to install terraform and ansible. Then make sure you have sorted out ssh keys.

    ansible-playbook local.yml --ask-vault-pass
