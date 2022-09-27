docker build -t lemonhope97/cicd:5.0 .
docker push lemonhope97/cicd:5.0
kubectl create deployment mobility --image=lemonhope97/cicd:5.0 --port=8080
sleep 6
kubectl expose deployment mobility --port 8080 --target-port 8080 --type LoadBalancer &
sleep 6
kubectl port-forward svc/cicd-service 8080 &
sleep 6
curl http://localhost:8080
