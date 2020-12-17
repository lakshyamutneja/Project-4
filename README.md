[![lakshyamutneja](https://circleci.com/gh/lakshyamutneja/Project-4.svg?style=svg)](https://app.circleci.com/pipelines/github/lakshyamutneja/Project-4)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

## Prerequisites & Assumptions

- Github and linked CircleCI accounts
- Workstation with a BASH terminal.
    - This project was tested on an Ubuntu 20.04 workstation.
- Working Docker, Kubectl, Python3.7, hadolint and Minikube Installations on your workstation.
- Knoledge of working with python3 virtual environments


**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Running Locally

1. Create and activate a python3.7 virtual environment by running `make setup`
    - All following instructions must be run with the environment activated
2. Install dependenices with `make install`
3. You can lint the applicaiton and docker files with `make lint` at this point if you wish.
4. Run the python application with `python app.py`
5. Verfy the api is listing by visiting localhost:80


### Files
***output_txt_files/docker_out.txt*** contains logs returned after running the app with Docker
***output_txt_files/kubernetes_out.txt*** containes logs and the prediction returned after running the app with Kubernetes(run_kubernetes.sh)
***run_docker.sh*** contains the steps to get Docker running the app locally
***run_kubernetes.sh*** contains the steps to get Kubernetes running the app locally
***upload_docker.sh*** contains the steps to upload the image to the Docker repository
