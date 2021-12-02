# Docker Tutorial

## Getting Started

1. Navigate to this directory with the ```Dockerfile```
2. Build the container image using the ```docker build``` command

    ```-t hello-world``` gives this image the tag of hello-world

    ```.``` tells Docker to create the image using the current dir and ```Dockerfile```
    ```bash
    $ docker build -t hello-world .
    ```
3. Start the app container using the ```docker run``` command

    ```-d``` tells Docker to run the app in "detached" mode, or in the background

    ```-p 3000:3000``` maps the host's port 3000 to the container's port 3000

    ```bash
    $ docker run -dp 3000:3000 hello-world
    ```

4. Navigate to http://localhost:3000 to see the app

    There is also an endpoint at ```GET /``` which should return "Hello, world!"