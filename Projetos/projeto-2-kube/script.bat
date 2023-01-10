echo "Criando as imagens ..........."

docker build -t andrecarmo02/projeto-backend:1.0 backend/.
docker build -t andrecarmo02/projeto-database:1.0 database/.

echo "Fazendo push das imagens ...."

docker push andrecarmo02/projeto-backend:1.0
docker push andrecarmo02/projeto-database:1.0

echo "criando os serviços do cluster kubernetes..."

kubectl apply -f ./service.yml

echo "realizando o deployment"

kubectl apply -f ./deployment.yml