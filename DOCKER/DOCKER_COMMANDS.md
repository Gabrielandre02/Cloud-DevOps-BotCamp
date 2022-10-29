# mapear volumes

docker run -dti --mount type=bind,src=/data/debian,dst=/data debian

# mapear volume mais somente leitura continaer

docker run -dti --mount type=bind,src=/data/debian,dst=/data,ro debian

#Volume internos docker

docker run -dti --name debian --mount type=volume,src=data-debian,dst=/data debian


# apache

docker run --name apache -d -p 80:80 --volume=/data/apache/:/usr/local/apache2/htdocs/ httpd

# criando docker file