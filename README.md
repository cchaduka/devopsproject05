[![CircleCI](https://circleci.com/gh/cchaduka/devopsproject05.svg?style=svg)](https://circleci.com/gh/cchaduka/devopsproject05)

### 1. Project Description

This project is designed to make you understand modern tools used to create application microservices using Python, Git, Docker and Kubernetes. The project takes you through the following:-<br />
* installing some prerequisite software for everything to run
* making changes to skeleton code
* building docker images
* running Docker containers
* uploading images to an image repository / hub
* deploying Docker containerized apps into kubernetes
* Continuous Intergration using online tools

### 2. Install Core Applications

* Install Homebrew -- https://brew.sh/<br />
* Install Python3 -- https://docs.python-guide.org/starting/install3/osx/<br />
* Install git -- https://www.atlassian.com/git/tutorials/install-git<br />
* Install Docker Desktop -- https://www.docker.com/products/docker-desktop<br />
* Install Virtualbox -- ```brew cask install virtualbox```<br />
* Install Minikube -- ```brew install minikube```<br />

### 3. Ready the Environment

* Clone the project's base files -- ```git clone https://github.com/udacity/DevOps_Microservices.git```<br />
* Move into the working directory -- ```cd DevOps_Microservices/project-ml-microservice-kubernetes```<br />
* Create a Python3 environment -- ```python3 -m venv ~/.devops```<br />
* Activate it -- ```source ~/.devops/bin/activate```<br />
* Edit ```requirements.txt``` and add ```pylint==2.3```. Newer versions (especially 2.5.3) gave formatting issues with Python3's formatted strings<br /> 
* Install hadolint -- ```brew install hadolint```<br />
* Install dependencies -- ```make install```<br />
* Project must pass 2 lint tests -- ```make lint```<br />

### 4. Run project in Docker

* Build Docker image and run app -- ```./run_docker.sh```<br />
* In a separate terminal, send data to app -- ```./make_prediction.sh```<br />

### 5. Docker Repo

* Upload Docker image to [Docker Hub](hub.docker.com) under your username -- ```./upload_docker.sh```

### 6. Run project in Kubernetes

* Start Kubernetes -- ```minikube start```

### 7. Kubernetes Deployment

* Deploy application -- ```./run_kubernetes.sh```<br />
* List running pods -- ```kubectl get pod```<br />
* Get pod console output / log -- ```kubectl logs <pod name>```

### 8. Github

* Login to [Github](https://github.com)<br />
* Create a new project repository<br />
* Upload all the project files to Github

### 9. CircleCI Integration

* On Github, under your new repo, create a ```.circleci/config.yml``` file (**_it's blank**_)<br />
* Paste contents of this file into this new ```config.yml``` file, **making sure it's a well formatted YAML** file -- https://s3.amazonaws.com/video.udacity-data.com/topher/2019/May/5cda0d76_config/config.yml<br />
* Go to https://circleci.com in your browser<br />
* Sign up or login<br />
* Select your newly created Github repo<br />
* Setup project, and build it

