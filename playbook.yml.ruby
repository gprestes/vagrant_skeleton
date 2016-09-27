---
- hosts: all

  roles:
    - role: rvm_io.rvm1-ruby
      tags: ruby
      become: yes
      rvm1_rubies:
        - 'ruby-2.3.1'

  tasks:
  - name: Install packages
    apt: pkg={{ item }} state=present update_cache=yes
    with_items:
      - git
  - name: Go to vagrant folder
    shell: echo "cd /vagrant" >> .bash_profile
