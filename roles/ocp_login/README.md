OCP Login
=========

Executes login in OCP using the oc client.

Requirements
------------

Openshift client must be preinstalled in the bastion node.

Role Variables
--------------

* ``OC_CLIENT_PATH: Full path to the oc client in the bastion node.``
* ``OCP_URL: URL of the Openshift instance to log to.``
* ``OCP_USER: Username to be used to log to the Openshift instance.``
* ``OCP_PASSWORD: Password to be used to log to the Openshift instance.``


Dependencies
------------

None

Example Playbook
----------------

- name: '[Global] Build Image'
  hosts: bastion
  become: false
  roles:
    - role: ocp_login
    - role: create-clean-workspace
    - role: build_image

License
-------

BSD
