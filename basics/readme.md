# Basic Docker Commands
Refer to these commands as we walk through our story...

    docker search busybox

    docker pull busybox

    docker images

    docker history busybox

    docker run -it busybox

    echo New file contents > new.txt

    (Ctrl-D to exit the container and stop it)

    docker ps -a

    docker start -ai <container name>

    cat new.txt

    docker run -it busybox

    (Notice there is no new.txt)

    docker commit <first container name> newfile

    docker run -it newfile

    cat new.txt

    git clone https://github.com/spitimage/docker101.git

    cd docker101

    docker build -t myprog .

    docker images

    docker run -it myprog

    (Ctrl-C and Ctrl-D to exit the container and stop it)

    docker run -d myprog

    d logs -f <container from last cmd>

