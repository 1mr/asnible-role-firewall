Firewall
========

This role helps to install and configure the iptables based firewall.

Requirements
------------

This role requires ansible 1.4 or higher.

Role Variables
--------------

The variables that can be passed to this role and a brief description about them are as follows:
```
    firewall:
      services:
        - name: SSH
          port:
            - 22/tcp
            - 22/udp
        - name: FTP
          port:
            - 21/tcp
        - name: HTTP
          port:
            - 80/tcp
      whitelist:
        - name: trusted
          host:
            - 1.1.1.1/32
```
  
Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      roles:
        - { role: 1mr.firewall, tags: firewall }

License
-------

BSD
