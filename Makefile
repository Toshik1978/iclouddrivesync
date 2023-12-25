.PHONY: venv install
.DEFAULT_GOAL := all

all: venv install

venv:
	@echo "+ $@"
	test -d .venv || python -m venv .venv

install:
	@echo "+ $@"
	. .venv/bin/activate; pip install -Ur requirements.txt
