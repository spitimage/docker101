# Start with the base busybox image
FROM busybox

# Most dockerfiles have this
MAINTAINER Aaron Nielsen spitimage@gmail.com

# Add our "program" to the new image (this is added as a new filesystem layer)
ADD run.sh /bin

# Provide default arguments (the program we just installed)
CMD ["/bin/sh", "/bin/run.sh"]
