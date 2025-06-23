@echo off
echo Setting up Python virtual environment...

REM Check if python is available
python --version > nul 2>&1
if errorlevel 1 (
    echo Error: python command not found. Please install Python 3 and add it to PATH.
    exit /b 1
)

REM Check if python is 64-bit
python -c "import platform; print(platform.architecture()[0])" > temp_arch.txt
set /p PYTHON_ARCH=<temp_arch.txt
del temp_arch.txt

if not "%PYTHON_ARCH%"=="64bit" (
    echo Error: python is not 64-bit (%PYTHON_ARCH%). Please install a 64-bit version of Python 3.
    exit /b 1
)
echo Found 64-bit Python.

REM Create virtual environment named .venv
echo Creating virtual environment...
python -m venv .venv
if errorlevel 1 (
    echo Error: Failed to create virtual environment.
    exit /b 1
)


REM Install requirements using the venv's pip
echo Installing dependencies from requirements.txt...
.\.venv\Scripts\pip install -r requirements.txt
if errorlevel 1 (
    echo Error: Failed to install requirements from requirements.txt.
    exit /b 1
)

echo Setup complete.
echo To activate the environment, run:
echo .\.venv\Scripts\activate.bat
