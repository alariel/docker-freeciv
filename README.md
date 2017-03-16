# docker-freeciv
A simple container to have a freeciv server up and running.

Build uppon debian/jessie-slim, it exposes port 53773.  
And of course, it uses the version available in the repositories, which is 2.4.  
Maybe i'll give the 2.5 a try sometime... ;)

So, to start simply use 
``docker run -d -p <ip>:<port>:53773 cbkffhef/docker-freeciv:latest``
and you should be ready to go.
