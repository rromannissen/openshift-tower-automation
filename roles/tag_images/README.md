Tag Images
==========

Tags a given image for DEV, PRE and PRO environments depending on a given target environment.

Requirements
------------

Openshift client must be preinstalled in the bastion node.

Role Variables
--------------

* ``OC_CLIENT_PATH: Full path to the oc client in the bastion node.``
* ``SERVICE_NAME: Name of the service that names the image to be tagged.``
* ``TARGET_ENVIRONMENT: Environment to promote the image to. Promotion means that it will be promoted to all previous environments as well.``


Dependencies
------------

None

Example Playbook
----------------

- name: '[Global] Tag Images'
  hosts: bastion
  become: false
  roles:
    - role: ocp_login
    - role: tag_images

License
-------

BSD
