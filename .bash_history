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
clear
git init
git config --global init.defaultBranch main
git config --global email: debola.adesope@gmail.com
git config --global email debola.adesope@gmail.com
git config --global user.email debola.adesope@gmail.com
git config --global user.name LaDebz
git add .
git commit -m "Initial commit"
it remote add origin
git remote add origin
git remote add origin https://github.com/LaDebz/Kubernetes.git
git push -u origin main
git branch -M main
git push -u origin main
clear
git push -u origin main
vi pod1.yml
git push
git add .
git show
git commit -m "namespaceyml"
git checkout -b feature
git log
git push
git push --set-upstream origin feature
git pull origin main
git checkout feature
git checkout main
git add .
git commit -m "fix"
git checkout feature
git status
vi .viminfo
git status
git commit -a "resolve conflict"
git commit -m "resolve conflict"
git add .
git commit -m "resolve conflict"
git push
git merge main
git push
sudo rm .vimonfo
sudo rm .viminfo
git branch
git push
git add .
git commit -m "rm .viminfo"
git push
git pull
ls
sudo apt-get update
clear
kubectl get nodes
ll
vi rs.yml
clear

kubectl apply -f rc.yml
kubectl get rc
kubectl get rc --namespace=dev
vi rcuat.yml
kubectl apply -f rcuat.yml
kubectl create -f rcuat.yml
vi ns.yml
kubectl apply -f your-namespace-file.yaml
kubectl apply -f ns.yaml
kubectl create -f ns.yaml
kubectl apply -f ns.yml
vi ns.yml
kubectl apply -f ns.yml
vi ns.yml
kubectl apply -f ns.yml
kubectl get ns
kubectl apply -f rcuat.yml
kubectl get rc --namespace=uat
kubectl config set-context --current --namespace=dev
kubectl get po
kubectl config set-context --current --namespace=uat
kubectl get po
vi rstesting.yml
kubectl apply -f rstesting.yml
kubectl get rs
kubectl config set-context --current --namespace=testing
kubectl get rs
kubectl get pod
kubectl delete po spring-rs-bwqlq spring-rs-tg75t
kubectl get pod
kubectl delete rs spring-rs
kubectl delete po spring-rs-bwqlq spring-rs-tg75t spring-rs-2f4xq spring-rs-hdjvk
kubectl config set-context --current --namespace=dev
ls
vi pod.yml

kubectl apply -f pod1.yml
kubectl get pods
vi rscohort15-pod.yml
kubectl apply -f rscohort15-pod.yml
kubectl get rs
vi rscohort15-pod.yml
kubectl apply -f rscohort15-pod.yml
vi rscohort15-pod.yml
kubectl apply -f rscohort15-pod.yml
vi rsrbcpod.yml
kubectl apply -f rsrbcpod.yml
vi rsrbcpod.yml
kubectl apply -f rsrbcpod.yml
kubectl get pods
kubectl get rs
kubectl delete spring-5cxsb
kubectl get pods
kubectl apply -f rsrbcpod.yml

kubectl get pod
kubectl get ns
kubectl config set-context --current --namespace=dev
kubectl get pod
kubectl apply -f rscohort15-pod.yml
kubectl apply -f rsrbcpod.yml
kubectl get pod/rbc
kubectl get rbc
kubectl apply -f rsrbcpod.yml
vi rsrbcpod.yml
kubectl apply -f rsrbcpod.yml
kubectl delete cohort15-pod
kubectl get rs
kubectl get pods
kubectl delete cohort15-pod spring-5cxsb spring-rqw65 testpod 
kubectl get pods
kubectl delete pod spring-5cxsb spring-rqw65 testpod 
kubectl get pods
kubectl api-resources
clear
kubectl get all
kubectl scale rs spring --replicas=6
kubectl get all
kubectl scale rs spring --replicas=2
kubectl get all
clear
kubectl get nodes
vi ds.yml
kubectl apply -f ds.yml
vi ds.yml
kubectl apply -f ds.yml
kubectl get ds
kubectl config set-context --current --namespace=uat
kubectl get ds
kubectl scale rs webapps --replicas=2
kubectl scale rs webapps --daemonset=2
clear
