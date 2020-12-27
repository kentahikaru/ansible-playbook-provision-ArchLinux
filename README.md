# ansible-playbook-provision-ArchLinux
Provision and configure freshly installed ArchLinux

1. Change hosts to:
    hosts: localhost
    connection: local
in main.yaml
2. as root run ansible-playbook main.yaml --extra-vars '{"uid_guid":"1050"}'

3. change user password
4. add user to sudoers using visudo

5. start xfce (startxfce4)
6. change hosts for playbook as in point 1.
7. as user, start  ansible-playbook xfce_playbook.yaml --extra-vars '{"uid_guid":"1050"}'
8. enter user password for sudo