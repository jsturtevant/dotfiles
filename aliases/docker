alias drmi='docker images | grep $1 | awk '{print $3}' | xargs docker rmi'
alias d="docker"

# Remove all Docker containers
function dnuke() {
  if read -q '?Are you sure (y/N)?'; then
    echo # empty line
    docker rm --force $(docker ps -aq)
  fi
  echo # empty line
}

# Follow instructions at https://github.com/kubernetes/kubernetes/tree/master/test/images#windows-nodes-setup for configuring keys. Brefiely:
# 
# On Windows:
# mkdir .docker
# docker run --isolation=hyperv --user=ContainerAdministrator --rm `
#   -e SERVER_NAME=$(hostname) `
#   -e IP_ADDRESSES=127.0.0.1,YOUR_WINDOWS_BUILD_NODE_IP `
#   -v "c:\programdata\docker:c:\programdata\docker" `
#   -v "$env:USERPROFILE\.docker:c:\users\containeradministrator\.docker" stefanscherer/dockertls-windows:2.5.5
# # restart the Docker daemon.
# Restart-Service docker
# New-NetFirewallRule -DisplayName 'Docker SSL Inbound' -Profile @('Domain', 'Public', 'Private') -Direction Inbound -Action Allow -Protocol TCP -LocalPort 2376
# scp.exe -r $env:USERPROFILE\.docker ubuntu@YOUR_LINUX_BUILD_NODE:/home/ubuntu/.docker-$os_version
#
# On Linux:
# export REMOTE_DOCKER_HOST=tcp://<ipaddress>:2376
# export OS_VERSION=1809
alias wdocker='docker --tlsverify --tlscacert ~/.docker-${OS_VERSION}/ca.pem --tlscert ~/.docker-${OS_VERSION}/cert.pem --tlskey ~/.docker-${OS_VERSION}/key.pem -H "$REMOTE_DOCKER_HOST"'