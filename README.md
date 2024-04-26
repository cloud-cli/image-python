# Python base image

This is a [Python](https://www.python.org/) base image for [Cloudy](https://github.com/cloud-cli)

## Usage

Create a Dockerfile:

```Dockerfile
FROM ghcr.io/cloud-cli/python
ADD . /home/app
```

Build the app:

```bash
docker build -t app-image .
docker run --rm app-image
```

## Zero-config

The image expects `main.py` to be present in `/home/app` to start the application

## Procfile

If a `Procfile` is present, [honcho](https://github.com/nickstenning/honcho) is used to start the processes.
