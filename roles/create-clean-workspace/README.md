Create Clean Workspace
======================

Creates a clean directory to be used as workspace.

Requirements
------------

None.

Role Variables
--------------

* ``SERVICE_NAME: Name of the service to be created.``
* ``DOWNLOAD_PATH: Path to download all files to.``

Dependencies
------------

None.

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
