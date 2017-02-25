Configure Projects
==================

A role that performs the following configuration actions:

- Create a secret for all projects (DEV, PRE, PRO) to store database credentials.
- Create an Openshift Template in all projects from a given Git repository.
- Enable service accounts from PRE and PRO projects to pull images from the DEV project.

Requirements
------------

Openshift client must be preinstalled in the bastion node.

Role Variables
--------------

* ``CONFIG_GIT_USER: User for the Git repository to download the Openshift Template from.``
* ``CONFIG_GIT_PASS: Password for the Git repository to download the Openshift Template from.``
* ``CONFIG_GIT_URL: URL for the Git repository to download the Openshift Template from.``
* ``DOWNLOAD_PATH: Path to download all files to.``
* ``SERVICE_NAME: Name of the service to be created.``
* ``OC_CLIENT_PATH: Full path to the oc client in the bastion node.``
* ``DB_USER_DEV: Database user for the DEV environment.``
* ``DB_PASS_DEV: Database password for the DEV environment.``
* ``DB_USER_PRE: Database user for the PRE environment.``
* ``DB_PASS_PRE: Database password for the PRE environment.``
* ``DB_USER_PRO: Database user for the PRO environment.``
* ``DB_PASS_PRO: Database password for the PRO environment.``

Dependencies
------------

None

Example Playbook
----------------

- name: '[Global] Configure projects'
  hosts: bastion
  become: false
  roles:
    - role: ocp_login
    - role: create-clean-workspace
    - role: config_project

License
-------

BSD
