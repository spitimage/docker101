# Docker 101 Hands On!
Clone and follow along as we explore the Docker basics.

# Slides
Refer to [these][slides] introduction slides for a great Docker overview (special thanks to [John Lewis][jl] for pulling it together).

# Commands for Our Exercise
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



[slides]: https://github.com/pointful/docker-intro
[jl]: https://github.com/pointful
