## The Makefile includes instructions on environment setup and lint tests
.ONESHELL:
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test
setup:
	# Create python virtualenv & source it
	python3 -m venv .env;
	(. ./.env/bin/activate;\
	which python3;\
	)

install:
	# This should be run from inside a virtualenv
	(\
		. ./.env/bin/activate;\
		which python3;\
		pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt\
	)

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	(\
		. ./.env/bin/activate;\
		pylint --disable=R,C,W1203 app.py;\
	)

all: setup install lint
