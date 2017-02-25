Build Image
===========

A role that builds a Docker image using a given Dockerfile from a git repository and packaging an artifact from Nexus.

Requirements
------------

Docker must be installed on the bastion node to be used. Installing Docker is otside the scope of this role.

Openshift client must be preinstalled in the bastion node.

Role Variables
--------------

* ``DOCKERFILE_GIT_USER: User for the Git repository to download the dockerfile from.``
* ``DOCKERFILE_GIT_PASS: Password for the Git repository to download the dockerfile from.``
* ``DOCKERFILE_GIT_URL: URL for the Git repository to download the dockerfile from.``
* ``DOWNLOAD_PATH: Path to download all files to.``
* ``SERVICE_NAME: Name of the service to be created.``
* ``NEXUS_BASE_URL: Base URL for the Nexus instance to download artifacts from.``
* ``NEXUS_REPOSITORY: Repository containing the artifact.``
* ``ARTIFACT_GROUP: Artifact group.``
* ``ARTIFACT_ID: Artifact ID.``
* ``ARTIFACT_TYPE: Artifact type.``
* ``ARTIFACT_VERSION: Artifact version.``
* ``OC_CLIENT_PATH: Full path to the oc client in the bastion node.``
* ``OCP_USER: Username to be used for authentication in Openshift.``
* ``OC_REGISTRY_URL: URL in which the OCP private registry has been published.``

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
