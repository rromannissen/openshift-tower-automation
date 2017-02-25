Deployment Automation on Openshift with Ansible Tower
=====================================================

This is the source code for the PoC presented on the talk "Automatización de despliegues en Openshift con Ansible Tower" (Deployment Automation on Openshift with Ansible Tower) held at the Openshift Madrid Meetup on February 22, 2017.

This is not intended to be the ultimate approach to the matter, but just a simple PoC to showcase the integration possibilities between Ansible Tower, Openshift and a high level orchestrator which was chosen to be Jenkins.

The PoC consists on a simple Jenkins pipeline that relies on Ansible Tower to perform all the heavy work to build up a Continuous Delivery flow over Openshift.

Contents
--------

- Root folder consists on playbooks that make use of the roles included on the "roles" directory. All roles are self documented in their respective folders.

- jenkins folder contains the Jenkinsfile in which the pipeline was modeled. Please be aware that all credentials use in the file have to be previously created using the Credentials Jenkins plugin.

- docker folder contains the Dockerfile used to build the image to be used in the PoC. It also includes the modified startup script for Wildfly.

- template folder contains the Openshift Template to be used to instantiate all Kubernetes/Openshift objects to support the application deployment.

Resources
---------

This PoC was built using the following resources:

- Ansible Tower Vagrant Box:
https://www.ansible.com/tower-trial

- Container Development Kit v2.3.0
https://developers.redhat.com/products/cdk/download/

- Gitlab Docker Image:
https://hub.docker.com/r/gitlab/gitlab-ce/

- Nexus 2 Docker Image:
https://hub.docker.com/r/sonatype/nexus/

- Jenkins Docker Image:
https://hub.docker.com/_/jenkins/

Documentation
-------------

You can check the slides from the talk here (Spanish only):
https://www.slideshare.net/rromannissen/automatizacin-de-despliegues-en-openshift-con-ansible-tower
