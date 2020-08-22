setup:
	python3 -m venv/ ~/.dockerproj

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W203 app.py

all: install int test
