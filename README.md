# Node.js Docker Image

[![Docker Repository on Quay](https://quay.io/repository/interactar/nodejs/status "Docker Repository on Quay")](https://quay.io/repository/interactar/nodejs)

# How to use this image

## Create a `Dockerfile` in your Node.js app project

```dockerfile
# specify the node base image with your desired version node:<version>
FROM quay.io/interactar/nodejs:8.x

FROM quay.io/interactar/nodejs:latest                                                                                                                                           
LABEL maintainer "John Doe" <mail@example.com>

ENV destDir /src/app

# Create app directory
RUN mkdir -p ${destDir}

#Set working Directory
WORKDIR ${destDir}

# Install app dependencies
COPY package.json .
RUN npm install --loglevel verbose

# Copy app source
COPY . .

# replace this with your application's default port
EXPOSE 3000

CMD [ "npm", "start" ]

```

You can then build and run the Docker image:

```console
$ docker build -t my-nodejs-app .
$ docker run -it --rm --name my-running-app my-nodejs-app
```
