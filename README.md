# ansible_desktop

Given a desktop pc, install ansible:

on Fedora
```
sudo dnf install ansible
```

then add ansible collection *community.general*
```
ansible-galaxy collection install community.general
```

git clone the repo, from inside the repo run
```
ansible-playbook --ask-become-pass local.yml
```
