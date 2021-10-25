# Getting started with kubernetes.docker.internal

## Install local Kubernetes via Docker Desktop

First go to `Docker Desktop -> Options -> Kubernetes`

Check `Enable Kubernetes` and confirm to install 1-node local Kubernetes cluster.

## Install Kubernetes Dashboard

Execute following command. It will install dashboard and configure rbac authorization.

```bash
bash init-kubernetes-dashboard.sh
```

## Install Nginx Ingress Controller

To install nginx ingress and set it as default ingress controller, call this command:

```bash
bash init-ingress-nginx.sh
```

## Connect To Kubernetes Dashboard

In separate terminal call `kubectl proxy` or `bash run-proxy.sh` and leave it to execute as daemon.

Now to use Kubernetes Dashboard you can open this link in your browser http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/node?namespace=_all

## Login To Kubernetes Dashboard

Generate file with an actual bearer token using a command:

```bash
bash get-bearer-token.sh
```

It will create a file `./tokens/bearer-token.txt.user`. Copy and paste its content to the token input field on login page.

## Conclusion

Congrats! You're all set up to continue your experiments with Kubernetes.