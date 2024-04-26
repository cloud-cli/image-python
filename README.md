# Node.js image

This is a [Node.js](https://nodejs.org/) base image for [Cloudy](https://github.com/cloud-cli)

## Usage

Create a Dockerfile 

```Dockerfile
FROM ghcr.io/cloud-cli/node
ADD . /home/app
```

Build an app

```bash
docker build -t app-image .
docker run --rm app-image
```

### As a static server

Create a `superstatic.json` file to [add configurations](https://github.com/firebase/superstatic#configuration)

### As a Node.js app

Add an entry to `package.json` with the `main` field pointing to the app's entrypoint

### Zero-config

Having a `index.js` present is enough to start the app

