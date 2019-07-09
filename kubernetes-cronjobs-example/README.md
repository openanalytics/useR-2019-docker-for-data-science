
# R CronJobs on Kubernetes

## Installing minikube

Follow the install instructions here: https://kubernetes.io/docs/tasks/tools/install-minikube/

After this you should have:
* kubectl
* a hypervisor
* minikube

Example install for Ubuntu:

```
# kubectl (latest)
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version

# virtualbox (6.0)
sudo apt-get install virtualbox-6.0

# minikube (1.2.0)
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.2.0/minikube-linux-amd64 && chmod +x minikube && sudo cp minikube /usr/local/bin/ && rm minikube
```

```bash
minikube start
```

## Reuse the Docker daemon from Minikube:

```bash
eval $(minikube docker-env)
```

See also: https://github.com/kubernetes/minikube/blob/0c616a6b42b28a1aab8397f5a9061f8ebbd9f3d9/README.md#reusing-the-docker-daemon

## Building the weather-reporting image

```bash
docker build -t r-weather-report r-weather-report
```

## Deploying the CronJob manifest

```bash
kubectl run 
```

