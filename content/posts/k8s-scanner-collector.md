+++
date = "2022-09-01"
title = "Logging Scans from Vulnerability and Exploit Scanners (for Fun)"
description = "Script (deployable to k8s) to log requests from vulnerability and exploit scanners."
tags = ["GoLang", "Vulnerabilities", "Exploits", "Scanners", "Threat Intelligence", "DigitalOcean", "k8s", "DOKS", "Docker", "Load Balancers"]
+++

## Intro

In this post, I explain a script (deployable to k8s) which will log incoming requests to collect requests from vulnerability and exploit scanners.

It's very basic and is not meant for any production use-cases, but it just a fun project to learn more about GoLang, k8s, and vulnerability scanners.

## Overview

You can find the scanner [here](https://github.com/fhightower/k8s-scanner-collector).

We'll deploy it to a k8s cluster (I'm using [DigitalOcean's Kubernetes service](https://docs.digitalocean.com/products/kubernetes/) (DOKS)) and see what vulnerability and exploit scanners hit our app!

If you've never built a docker image, pushed it to a registry, and/or deployed that image to k8s, you can keep reading this post as I'll walk you through the process, but you may also find
DigitalOcean's [guide on the subject](https://docs.digitalocean.com/tutorials/build-and-deploy-your-first-image-to-your-first-cluster/) helpful.

## The process

The process requires four steps:

1. Create a docker image
2. Push docker image to a registry
3. Deploy that image to a k8s cluster
4. View logs showing scanner activity

So let's jump in!

### Create Docker Image

To create a docker image locally, we start by cloning the [repo](https://github.com/fhightower/k8s-scanner-collector):

```
git clone git@github.com:fhightower/k8s-scanner-collector.git;
cd k8s-scanner-collector;
```

and we build a docker image with the name `scanner-collector` like:

```
docker build -t scanner-collector .
```

You can look at the `Dockerfile` to see what is included in this docker image.

You can then run the image you created with:

```
docker run -p 80:80 scanner-collector
```

which will run the scanner on http://localhost:80.

If you run this locally, you can see that, for each request, it logs:

- The requested path
- The IP from which the request is coming (we make a best effort to find this)

### Push Docker Image to Registry

Next, we'll deploy our docker image to a registry (in this case, in DigitalOcean, but the process should be similar for different cloud providers).

To do this, we'll use the [doctl](https://docs.digitalocean.com/reference/doctl/how-to/install/) cli.

We start by [creating a token](https://cloud.digitalocean.com/account/api/tokens/new) and then running this command which
will prompt you for your token:

```
doctl auth init
```

Now, if you don't already have a registry, run:

```
doctl registry create <registry-name>
```

where `<registry-name>` is globally unique.
If you already have a registry in DigitalOcean, you an skip this step.

Next, we login into our registry:

```
doctl registry login
```

Now, run this command to let docker know which image we want to push to the registry:

```
docker tag scanner-collector registry.digitalocean.com/<registry-name>/scanner-collector
```

and push it to the registry:

```
docker push registry.digitalocean.com/<registry-name>/scanner-collector
```

To make sure it has been pushed successfully, we can run it locally using the image from the registry:

```
docker run -p 80:80 registry.digitalocean.com/<registry-name>/scanner-collector
```

### Deploy Image to k8s

Now, we're ready to deploy our image to k8s.

First, we create a new cluster with sane defaults:

```
doctl kubernetes cluster create <cluster-name> --tag k8s-scanner-collector --auto-upgrade=true --node-pool "name=mypool;count=2;auto-scale=true;min-nodes=1;max-nodes=3;tag=scanner-collector"
```

(see more details on this command [here](https://docs.digitalocean.com/tutorials/build-and-deploy-your-first-image-to-your-first-cluster/#step-5-create-a-cluster)).

Now, we need to give our cluster access to our private registry:

```
doctl registry kubernetes-manifest | kubectl apply -f -
kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "registry-<your-registry-name>"}]}'
```

(see more details about these commands [here](https://docs.digitalocean.com/tutorials/build-and-deploy-your-first-image-to-your-first-cluster/#step-6-run-your-app-on-a-cluster)).

Now for the fun part... let's deploy the collector:

```
kubectl create deployment scanner-collector --image=registry.digitalocean.com/<registry-name>/scanner-collector
```

You can view the pods with:

```
kubectl get pods
```

<!-- Todo: include other interesting commands here... -->

Now, let's add a load balancer so our service is publicly accessible:

```
kubectl expose deployment scanner-collector --type=LoadBalancer --port=80 --target-port=80
```

This can take a few minutes to get created, but you can run this until the `Status` field is `active`:

```
doctl compute load-balancer list --format Name,Created,IP,Status
```

Once `Status` is `active`, you should see an IP address which is the public IP for your deployment.

You can visit that IP address in your browser and will see your app.

### View Logs Showing Scanner Activity

Now that we have a publicly accessible app, we can look at the logs to see if there's anyone scanning our IP for vulnerabilities or exploits.

I recommend running:

```
kubectl get pods
```

and then, using a pod name from the output from the last command:

```
kubectl logs <pod-name>
```

This will show some odd traffic like a request to `/?XDEBUG_SESSION_START=phpstorm HTTP/1.1` trying to take advantage of [this](https://www.exploit-db.com/ghdb/6763) vulnerability.

Enjoy!

