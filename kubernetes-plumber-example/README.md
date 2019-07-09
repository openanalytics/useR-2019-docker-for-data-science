
# Scalable R API on Kubernetes

## Installing/configuring minikube

See ../kubernetes-cronjobs-example

```bash
minikube start
```

## Building the example-plumber-api image

```bash
eval $(minikube docker-env)
docker build -t example-api example-api
```

## Deploy the image to kubernetes

```bash
kubectl apply -f example-api.deployment.yaml
kubectl apply -f example-api.service.yaml

# your container is running in a pod
kubectl get pods
# this pod is managed by a deployment
kubectl get deployment
# the deployment is exposed via a service
kubectl get services
``` 

## Test your API:

The deployment is exposed through the service, but only visible within the
kubernetes network. To make it temporarily accessible to the host
(the local machine running minikube), we can use `kubectl port-forward`.

```bash
kubectl port-forward service/example-api 8000:8000
curl http://localhost:8000/api/whereami
```

## Advanced: Ingress

Of course, in a real setting you wouldn't use `port-forward` to expose your API.
Instead, you would use something like the nginx controller for kubernetes.

First, configure the nginx controller:

```bash
kubectl apply -f ingress-nginx
```

Then, create the ingress for your API:

```bash
kubectl apply -f example-api.ingress.yaml
```
