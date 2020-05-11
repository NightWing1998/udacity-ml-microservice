# Machine Learning Microservice 
[ ![CircleCI](https://circleci.com/gh/NightWing1998/udacity-ml-microservice.svg?style=svg&circle-token=139d9f2658ed39258d7e43257aadd6fd1fb5bbbb) ](https://app.circleci.com/pipelines/github/NightWing1998/udacity-ml-microservice)

## Project Overview

It is a mini project made to be submitted for the Nano-degree in Cloud dev-ops engineer by Udacity. 
The aim of the project is to 
* [x] containerize a Machine learning service, written in Python, using docker
* [x] publishing the image on some remote repository
* [x] Running the published image on a kubernetes cluster or pods.
* [x] Integrate CircleCI as a build server to test the code

## Setup the Environment

- Create a virtualenv and activate it
- Run `make setup && make install` to install the necessary dependencies

## What are the files and what do they do:

* app.py - The main Machine learning web service 
    * routes:
        * \* /: The home route
        * POST /predict: The main service route which takes the input and returns the predicted value
* Dockerfile: The file which docker will refer whenever we want to build an image
* run_docker.sh: Compilation of commands which will build a docker image and run a container using that image 
* upload_docker.sh: Compilation of commands which will build a docker image, tag it and upload it on remote repository
* run_kubernetes.sh: Compilation of commands which can run the published docker image in kubernetes pods

### Running `app.py`

1. Standalone: `python3 app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

## Credits

- The following files are coutesy of Udacity:
    * app.py
    * model_data/*