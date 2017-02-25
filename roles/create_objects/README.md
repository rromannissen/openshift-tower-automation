Create Objects
==============

Instantiates an Openshift Template on a given project using a list of given parameters.

Requirements
------------

Openshift client must be preinstalled in the bastion node.

Role Variables
--------------

* ``OC_CLIENT_PATH: Full path to the oc client in the bastion node.``
* ``SERVICE_NAME: Name of the service to be created.``
* ``DOWNLOAD_PATH: Path to download all files to.``
* ``MONGODB_USER: MongoDB user.``
* ``MONGODB_PASSWORD: MongoDB password.``
* ``MONGODB_DATABASE: MongoDB database.``
* ``MONGODB_ADMIN_PASSWORD: MongoDB administrator password.``
* ``ARTIFACT_ID: Deployed artifact ID.``
* ``ARTIFACT_VERSION: Deployed artifact version.``
* ``TEMPLATE_NAME: Name of the template to instantiate.``
* ``ENV: Environment on which the template will be instantiated.``



Dependencies
------------

None

Example Playbook
----------------

- name: '[Global] Create Objects'
  hosts: bastion
  become: false
  roles:
    - role: ocp_login
    - role: create-clean-workspace
    - role: create_objects

License
-------

BSD
