# ft_services
Codam [42 Network] project: set up an infrastructure of different services using Kubernetes.

### Project constraints :warning:
* The Load Balancer should be the only entry point for the Cluster and can only have a single IP.
* Usage of Node Port services, Ingress Controller object or kubectl port-forward command is prohibited.
* It's forbidden to use pre-built Docker images or to use services like Docker Hub.
* Containers have to be build using Alpine Linux.

Read the entire ft_services subject.

### Requirements

* A tool that lets you run Kubernetes locally, such as Minikube or Kind <br>
* Kubernetes command-line tool `kubectl` :hammer_and_wrench: <br>
* Virtual Machine, such as Docker or VirtualBox :computer: <br>
* Internet connection on first run <br>

### Minikube
There are multiple platforms that you can try out to run Kubernetes on your local machine. I'm using [Minikube](https://minikube.sigs.k8s.io/docs/start/). Minikube runs a single-node Kubernetes cluster inside a VM. Minikube comes with its own docker daemon. This allows you to run containers inside the Minikube VM. Minikube has several addons available that come in useful for this project. <br><br>
:grey_exclamation: Run `eval $(minikube docker-env)` to point your shell to minikube’s docker-daemon. <br>
:grey_exclamation: Run `minikube addons list` to list all the available addons for Minikube.

### Nodes
A cluster typically has one or more nodes, which are the worker machines that run your containerized applications and other workloads. In this project it's a single node, the VirtualBox VM.

## Pods
A Pod represents a single instance of a running process in your cluster. A Pod is a group of one or more containers. You can use a controller, such as a Deployment, which creates and manages Pods for you. The desired state of pods exists in a Deployment yaml file. Pods communicate with each other using a service. 

## Service
What is a service?<br><br>
A service is used to expose your app to the outside world or within your cluster. 

Services allow your applications to receive traffic. Services can be exposed in different ways 

Service types:<br>

| Type  | Description   |
| ------------------ |-------------|
| ClusterIP      | The default Kubernetes service. Creates a virtual IP inside the cluster to enable communication between different services. There is no external access. | 
| LoadBalancer      | Exposes a service to the outside world. The external load balancer is associated with a specific IP address and routes external traffic to a Kubernetes service in your cluster. We'll have to supply our own network load-balancer implementation. 
| NodePort | Makes the service accessible on a static port on each node in the cluster.|


`kubectl get nodes` - check available nodes.
