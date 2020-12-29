# ansible-playbook-provision-ArchLinux
Provision and configure freshly installed ArchLinux

1. Change hosts to:
    hosts: localhost
    connection: local
in setup_system.yaml and setup_xfce.yaml and setup_aur.yaml
1.1 if testing, coment out fstab configuration

2. as root run ansible-playbook setup_system.yaml --extra-vars '{"uid_guid":"1050"}'

3. change user password
4. add user to sudoers using visudo

5. start xfce (startxfce4)
6. as user, start  ansible-playbook setup_aur.yaml --extra-vars '{"uid_guid":"1050"}'
7. as user, start  ansible-playbook setup_xfce.yaml --extra-vars '{"uid_guid":"1050"}'
7.1. enter user password for sudo