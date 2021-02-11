# ft_services
Codam [42 Network] project: set up an infrastructure of different services using Kubernetes.

### Run Kubernetes locally
There are multiple platforms that you can try out to run Kubernetes on your local machine. I'm using [Minikube](https://minikube.sigs.k8s.io/docs/start/) for my project :arrow_down:.

### Requirements

* Minikube :small_blue_diamond: <br>
* `kubectl` Kubernetes command-line tool :hammer_and_wrench: <br>
* Virtual Machine, such as Docker or VirtualBox :computer: <br>
* Internet connection on first run <br>

### Minikube
Minikube runs a single-node Kubernetes cluster inside a VM. Minikube comes with its own docker daemon. This allows you to run containers inside the Minikube VM.

### Nodes
A cluster typically has one or more nodes, which are the worker machines that run your containerized applications and other workloads. In this project it's a single node, the VirtualBox VM.

`kubectl get nodes` - check available nodes.
