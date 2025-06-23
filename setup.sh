#!/bin/bash
echo "Setting up Python virtual environment..."

# Check if python3 is available
if ! command -v python3 &> /dev/null
then
    echo "Error: python3 command not found. Please install Python 3."
    exit 1
fi

# Check if python3 is 64-bit
PYTHON_ARCH=$(python3 -c "import platform; print(platform.architecture()[0])")
if [ "$PYTHON_ARCH" != "64bit" ]; then
    echo "Error: python3 is not 64-bit ($PYTHON_ARCH). Please install a 64-bit version of Python 3."
    exit 1
fi
echo "Found 64-bit Python 3."

# Check if libomp is installed (using Homebrew)
if command -v brew &> /dev/null && ! brew list libomp &> /dev/null; then
    echo "Warning: libomp is not installed via Homebrew. Some packages might require it."
    echo "You can install it using: brew install libomp"
    # Decide if this should be a fatal error or just a warning
    # exit 1 # Uncomment this line to make it a fatal error
fi
echo "Checked for libomp."

# Create virtual environment named .venv
python3 -m venv .venv

# Install requirements using the venv's pip
echo "Installing dependencies from requirements.txt..."
./.venv/bin/pip install -r requirements.txt

echo "Setup complete."
echo "To activate the environment, run:"
echo "source .venv/bin/activate"
