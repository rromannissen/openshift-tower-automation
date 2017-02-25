Create Projects
===============

Creates DEV, PRE and PRO projects in Openshift for a given service name.

Requirements
------------

Openshift client must be preinstalled in the bastion node.

Role Variables
--------------

* ``OC_CLIENT_PATH: Full path to the oc client in the bastion node.``
* ``SERVICE_NAME: Name of the service/application to be deployed on the DEV, PRE and PRO Openshift projects. Will be used as root for the project names.``

Dependencies
------------

None

Example Playbook
----------------

- name: '[Global] Create projects'
  hosts: bastion
  become: false
  roles:
    - role: ocp_login
    - role: create_projects

License
-------

BSD
