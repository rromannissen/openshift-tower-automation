export MONGODB_USER="$(cat /tmp/secret/username)"
export MONGODB_PASSWORD="$(cat /tmp/secret/password)"
/wildfly/bin/standalone.sh -b 0.0.0.0
