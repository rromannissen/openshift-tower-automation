FROM openshift/wildfly-100-centos7
ADD mlbparks-*.war /wildfly/standalone/deployments
ADD start-wildfly.sh /wildfly/bin/
USER root
RUN chmod +x /wildfly/bin/start-wildfly.sh
RUN chown -R 1001:0 /wildfly
USER 1001
CMD /wildfly/bin/start-wildfly.sh
