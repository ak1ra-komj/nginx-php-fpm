#! /bin/bash
# version: 7.4-fpm-1.19-nginx or 7.4-fpm-1.19-nginx-extension

if [ "$1" == "extension" ]; then
    df="Dockerfile.extension"
    version="7.4-fpm-1.19-nginx-extension"
else
    df="Dockerfile"
    version="7.4-fpm-1.19-nginx"
fi
image="ak1raxyz/nginx-php-fpm"

docker build -f Dockerfile -t "$image:$version" -f $df .
docker push "$image:$version"
