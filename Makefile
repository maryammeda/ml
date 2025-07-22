.PHONY: env install clean

# Create a local virtual environment in .venv and upgrade pip
env:
	python3 -m venv .venv
	. .venv/bin/activate && pip install --upgrade pip


# Install the packages in the virtual environment
install:
	. .venv/bin/activate && pip install -e .


# Remove the virtual environment directory
clean:
	rm -rf .venv