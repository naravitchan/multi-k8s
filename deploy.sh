docker build -t naravich123/mutil-client:latest -t naravich123/mutil-client:v1 -f ./client/Dockerfile ./client
docker build -t naravich123/mutil-server:latest -t naravich123/mutil-server:v1 -f ./server/Dockerfile ./server
docker build -t naravich123/mutil-worker:latest -t naravich123/mutil-worker:v1 -f ./worker/Dockerfile ./worker
docker push naravich123/mutil-client
docker push naravich123/mutil-server
docker push naravich123/mutil-worker
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=naravich123/mutil-server