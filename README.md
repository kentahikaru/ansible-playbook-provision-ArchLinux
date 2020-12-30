# ansible-playbook-provision-ArchLinux
Provision and configure freshly installed ArchLinux

0. ansible-galaxy install -r requirements.yaml
1. if testing, coment out fstab configuration

2. as root run ansible-playbook 1-setup_system.yaml --extra-vars '{"uid_guid":"1050"}'

3. change user password
4. add user to sudoers using visudo

5. start xfce (startxfce4)
6. as user, start  ansible-playbook 2-setup_aur.yaml --extra-vars '{"uid_guid":"1050"}'
7. as user, start  ansible-playbook 3-setup_xfce.yaml --extra-vars '{"uid_guid":"1050"}'
    * enter user password for sudo
8. as user, start ansible-playbook 4-install_aur_packages.yaml -K --extra-vars '{"uid_guid":"1050"}'