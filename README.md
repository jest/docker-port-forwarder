A simple port forwarder using socat.


A port forwarder run as a service with the help of socat.

Use cases are numerous; one can e.g. expose already running containers to the world for a limited time:

    docker run --rm -it --link hidden-container:host --publish 80:80 pwes/port-forwarder 80 host:80

