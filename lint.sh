#!/bin/sh

set -ex

black --version
usort --version
flake8 --version

usort format surprise
usort format tests
usort format examples
usort format setup.py

black surprise
black tests
black examples
black setup.py

flake8 --max-line-length 88 --ignore E203,E402,W503,W504,F821,E501 surprise
flake8 --max-line-length 88 --ignore E203,E402,W503,W504,F821,E501 tests
flake8 --max-line-length 88 --ignore E203,E402,W503,W504,F821,E501 examples
flake8 --max-line-length 88 --ignore E203,E402,W503,W504,F821,E501 setup.py
