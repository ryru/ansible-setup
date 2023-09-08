# Ansible Setup

My personal Ansible configurations for notebooks, PCs and servers.

## Setup

- Install ansible as described [in the official documentation](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu)

## Run

- `ansible-playbook -c local -i hosts local.yml`

## Project Overview

| Machine               | Playbook   | Roles                |
| --------------------- | ---------- | -------------------- |
| Notebook              | local.yml  | base,dev,workstation |
| Servers               | server.yml | base,server          |
| Work PC (Home Office) | local.yml  | base,dev,workstation |
| Work PC (Office)      | local.yml  | base,dev,workstation |

### Playbooks

- `local.yml` is my local machines setup. This is the current configuration for my private notebook as well as for my office PCs.

### Roles

- _base_ General machine configuration that is applicable for all types of machines and scenarios.
- _dev_ Everything that is related to software development and engineering.
- _server_ Server configurations that are applied to non GUI machines.
- _workstation_ GUI machine configurations.

### Variables
