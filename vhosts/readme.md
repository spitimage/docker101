# Vhost Reverse Proxy Exercise
This example covers a more typical usage of multiple docker containers on a single host. Here, we are using 3 Nginx containers:

* One container for Vhost mapping and reverse proxying.
* One container to simulate Vhost 1 (simple static content for now).
* One container to simulate Vhost 2 (simple static content for now).

(A realistic scenario would have something more interesting than static nginx for each site).

## DNS Alternative
Add the following to /etc/hosts (as root):

    echo 127.0.0.1 vhost1 >> /etc/hosts
    echo 127.0.0.1 vhost2 >> /etc/hosts

## Pull Down Our Images
This would also occur if we attempted to run an image that didn't yet exist locally.

    docker pull jwilder/nginx-proxy
    docker pull dockerfile/nginx

## Start the Reverse Proxy

    docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock jwilder/nginx-proxy

## Start Nginx for Vhost1

    docker run -e VIRTUAL_HOST=vhost1 -d -v `pwd`/site1:/usr/share/nginx/html dockerfile/nginx

## Start Nginx for Vhost2

    docker run -e VIRTUAL_HOST=vhost2 -d -v `pwd`/site2:/usr/share/nginx/html dockerfile/nginx

## Test Vhost1
This should display the content from site1:

    curl vhost1/hello.txt

## Test Vhost2
This should display the content from site2:

    curl vhost2/hello.txt


