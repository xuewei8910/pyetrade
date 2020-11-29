init:
	pip3 install -r requirements.txt
devel:
	pip3 install -r requirements_dev.txt
	pre-commit install
test:
	tox
lint:
	flake8 pyetrade tests
install:
	pip3 install --upgrade .
dist:
	python3 setup.py sdist
clean:
	find . -iname *.pyc -exec rm -f {} +
	pip3 uninstall -y pyetrade
