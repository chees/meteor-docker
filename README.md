You can use this to run Meteor in a Docker container.


Bundle your Meteor app:

    ./bundle.sh


Build the container:

    docker build -t chees/meteor .


Start MongoDB:

    docker run --name mongo -d mongo


Start Meteor:

    docker run --name meteor -d -p 80:3000 --link mongo:mongo chees/meteor


Your Meteor site should then be running on port 80.
If you're using boot2docker you can run `boot2docker ip` to find the ip. Usually it's something like http://192.168.59.103/


Stop the containers:

    docker rm -f mongo meteor
