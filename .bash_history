sudo apt-get update
sudo apt install apt-transport-https curl -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install containerd.io
sudo containerd config default | sudo tee /etc/containerd/config.toml
sudo sed -i '127s/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
sudo systemctl restart containerd
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo systemctl enable --now kubelet
sudo swapoff -a
sudo modprobe br_netfilter
sudo sysctl -w net.ipv4.ip_forward=1
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config 
kubectl apply -f https://raw.githubusercontent.com/flannel-io/flannel/v0.20.2/Documentation/kube-flannel.yml
kubectl get pods --all-namespaces
kubectl get nodes
exit
apt-get update
sudo apt-get update
kubectl get nodes
kubectl get pods
kubectl get ns
kubectl create ns dev
kubectl create -f pod1 --namespace dev
kubectl create pod1
kubectl create -f pod.yml --namespace dev
vi pod.yml
kubectl create -f pod.yml --namespace dev
vi pod.yml
kubectl create -f pod.yml --namespace dev
kubectl api-resources
kubectl api-resources | grep pods
clear
kubectl get pods
kubectl get pod --namespace dev
1
kubectl get pod --namespace dev
kubectl create ns prod
kubectl get ns
clear
kubectl get all -o wide
kubectl get all
kubectl get pod
kubectl get pods --namespace=dev
kubectl restart testpod
ls
vi pod.yml
kubectl apply -f pod.yml
vi pod.yml
kubectl apply -f pod.yml
vi pod.yml
kubectl apply -f pod.yml
kubectl delete pod testpod
vi pod.yml
kubectl apply -f pod.yml
vi pod.yml
kubectl apply -f pod.yml
clear
kubectl get all -o wide
kubectl get all -o wide --namespace=dev
kubectl get all -o yaml
clear
vi pod4.yml
sudo apt-get install yq
vi pod4.yml
kubectl apply -f pod4.yml
vi pod4.yml
kubectl apply -f pod4.yml
kubectl get all -o wide
kubectl get all -o wide --namespace=dev
vi pod5.yml
kubectl apply -f pod5.yml
vi pod6.yml
kubeadm token list 
vi rs.yml
kubectl apply -f rs.yml
vi rs.yml
kubectl apply -f rs.yml
kubectl get all -o wide
vi rs.yml
