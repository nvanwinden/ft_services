# ft_services
Codam [42 Network] project: set up an infrastructure of different services using Kubernetes.<br>
Skills: `Network administration` `System administration`

### Project constraints :warning:
* The Load Balancer should be the only entry point for the Cluster and can only have a single IP.
* Usage of Node Port services, Ingress Controller object or kubectl port-forward command is prohibited.
* It's forbidden to use pre-built Docker images or to use services like Docker Hub.
* Containers have to be build using Alpine Linux.

Read the entire [ft_services subject](https://github.com/nvanwinden/ft_services/blob/main/en.subject.pdf).

### Requirements
* A tool that lets you run Kubernetes locally, such as Minikube or Kind :house: <br>
* Kubernetes command-line tool `kubectl` :hammer_and_wrench: <br>
* Virtual Machine, such as Docker or VirtualBox :computer: <br>

### Kubernetes
Kubernetes (K8s) is an open-source platform for container orchestration and automates the deployment, management, scaling, and networking of containerized applications.

### Kubernetes cluster
A Kubernetes cluster is a set of one or more nodes that run containerized applications.

### Nodes
Nodes are the worker machines that run containerized applications and other workloads. In this project we have a single node, the virtual machine our local Kubernetes cluster is running on.

## Pods
A Pod represents a single instance of a running process in your cluster and consists of one or more containers. You can use a controller, such as a Deployment, which creates and manages Pods for you.

## Containers

## Deployment
A Deployment lets you manage a set of identical pods. The Deployment manifest defines the desired state in which applications or other workloads should be running. 

## Replica sets
This is a feature that looks that the number of specified pods are running at any point in time.





### Minikube
There are multiple platforms that you can try out to run Kubernetes on your local machine. I'm using [Minikube](https://minikube.sigs.k8s.io/docs/start/). Minikube runs a single-node Kubernetes cluster inside a VM. Minikube comes with its own docker daemon. This allows you to run containers inside the Minikube VM. Minikube has several addons available that come in useful for this project. <br><br>
:grey_exclamation: Run `eval $(minikube docker-env)` to point your shell to minikube’s docker-daemon. <br>
:grey_exclamation: Run `minikube addons list` to list all the available addons for Minikube.





## Service
A service is used to expose your app to the outside world or within your cluster. 

Services allow your applications to receive traffic. Services can be exposed in different ways 

Pods communicate with each other using a service. 

Service types:<br>

| Type  | Description   |
| ------------------ |-------------|
| ClusterIP      | The default Kubernetes service. Creates a virtual IP inside the cluster to enable communication between different services. There is no external access. | 
| LoadBalancer      | Exposes a service to the outside world. The external load balancer is associated with a specific IP address and routes external traffic to a Kubernetes service in your cluster. We'll have to supply our own network load-balancer implementation. 
| NodePort | Exposes a service via a static port on each node in the cluster.|




## Persistent Volume Claims


`kubectl get nodes` - check available nodes.

Challenge of this project is to find out how to configure all the Docker containers 
