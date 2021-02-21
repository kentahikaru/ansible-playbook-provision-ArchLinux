#! /bin/bash

# backup fstab
ansible -i inventory iosim -a "sudo cp /etc/fstab /etc/fstab.bkp"

# Run 1. playbook
ansible-playbook 1-setup_system.yaml --extra-vars '{"uid_guid":"1050"}' --extra-vars "variable_host=iosim" --extra-vars "as_user_add_to_sudoers_no_password=true"

# restore fstab
ansible -i inventory iosim -a "sudo cp /etc/fstab.bkp /etc/fstab"

# create .ssh dir
ansible -i inventory iosim -a "sudo mkdir -p /home/sandi/.ssh"

# Copy authorized_keys to user
ansible -i inventory iosim -a "sudo cp /home/vagrant/.ssh/authorized_keys /home/sandi/.ssh/"

# Change owner of authorized keys
ansible -i inventory iosim -a "sudo chown sandi:sandi /home/sandi/.ssh/authorized_keys"

# Run 2nd test
ansible-playbook 2-setup_aur.yaml --extra-vars '{"uid_guid":"1050"}' --extra-vars "variable_host=iosim" --extra-vars "ansible_ssh_user=sandi" --extra-vars "ansible_become_pass=sandi"

# Run 3rd test
ansible-playbook 3-install_aur_packages.yaml --extra-vars '{"uid_guid":"1050"}' --extra-vars "variable_host=iosim" --extra-vars "ansible_ssh_user=sandi" --extra-vars "ansible_become_pass=sandi"

# Setup autologin to xorg
ansible-playbook testing/setup_autologin_to_xorg.yaml --extra-vars "ansible_ssh_user=sandi" --extra-vars "ansible_become_pass=sandi"

# Reboot
ansible-playbook testing/reboot.yaml

# Run 4rd test
ansible-playbook 4-setup_xfce.yaml --extra-vars '{"uid_guid":"1050"}' --extra-vars "variable_host=iosim" --extra-vars "ansible_ssh_user=sandi" --extra-vars "ansible_become_pass=sandi"

# Reboot
ansible-playbook testing/reboot.yaml