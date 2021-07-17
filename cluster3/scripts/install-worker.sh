#!/bin/sh
kubeadm reset -f
sh /vagrant/tmp/master-join-command.sh
systemctl daemon-reload
service kubelet start
curl -s https://s3.amazonaws.com/download.draios.com/stable/install-sysdig | sudo bash
curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin v0.18.3