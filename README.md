# init

When you live in a command line, configurations are a deeply personal thing. They are often crafted over years of experience, battles lost, lessons learned, advice followed, and ingenuity rewarded. When you are away from your own configurations, you are an orphaned refugee in unfamiliar and hostile surroundings. You feel clumsy and out of sorts. You are filled with a sense of longing to be back in a place you know. A place you built. A place where all the short-cuts have been worn bare by your own travels. A place you proudly call… `$HOME`.

> Credit for the above beautiful text goes to the YADM team even though I don't use it to manage my dotfiles. I prefer to use stow.

## What is init

This repository contains configurations (Terraform code, Ansible collections and shell scripts) for setting up and managing remote dev environments, local dev containers and new dev machines.

- Terraform modules to provision remote dev environments on Azure and AWS.
- Ansible playbooks to configure provisioned dev environments.

## Directory structure

```
.
├── .
├── infrastructure/
│   ├── aws - terraform code to provision dev machine on aws
│   ├── azure - terraform code to provision dev machine on azure
│   ├── gcp - terraform code to provision dev machine on gcp
│   ├── digital-ocean - terraform code to provision dev machine on digital ocean
│   └── linode - terraform code to provision dev machine on linode
└── config/
    ├── playbooks/
    │   ├── core.yaml - playbook to install core packagaes and utilities for development
    │   ├── zsh - playbook to install and configure zsh
    │   └── dotfiles.yaml - playbook to clone and configure dotfiles
    ├── scripts
    └── remote.yaml - entry point ansible playbook to configure remote dev machines
```

## Usage

Provision your resource.

```
# ./infrastructure/azure
terraform plan
terraform apply
```

Take the generated public key and public IP address from terraform output and configure inventory.ini. Configure the provisioned resource

```
# ./configure
ansible-playbook -i inventory.ini remote.yaml
```
