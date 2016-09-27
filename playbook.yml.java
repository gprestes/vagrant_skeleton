---
- hosts: all

  tasks:
  - name: Install packages
    apt: pkg={{ item }} state=present update_cache=yes
    with_items:
      - git
      - gradle
      - default-jdk
  - name: Go to vagrant folder
    shell: echo "cd /vagrant" >> .bash_profile
