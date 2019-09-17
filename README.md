# Drone Serverless Plugin

This repository contains a Drone plugin that contains the [Serverless CLI](https://serverless.com) pre-installed to be used on any QuintoAndar project that uses it.

## Usage

You can use it like any other Drone Plugin:

~~~yaml
pipeline:
  deploy:
    image: gcr.io/quintohub/drone-serverless
    ...
~~~

## Versions

* `serverless`: [1.52.0](https://www.npmjs.com/package/serverless/v/1.52.0)
* `node`: [10.16.3-alpine](https://github.com/nodejs/docker-node/blob/a9c583095d4cf08bbd68f570a1f9a99780820351/10/alpine/Dockerfile)
