#!bin/bash
sudo apt update

if command -v python3 &> /dev/null; then
    echo "python 3 is installed"
    if command python3 -m pip --version &> /dev/null; then
        echo "pip is installed"
    else
        echo "pip is not installed"
        sudo apt install python3-pip
    fi

    if command python3 -m venv --help &> /dev/null; then
        echo "venv is installed"
    else
        echo "venv is not installed"
        sudo apt install python3-venv
    fi
else
    echo "python 3 is not installed download and install pyhthon from https://www.python.org/"
fi

if command node -v &> /dev/null; then
    echo "node is installed"
else
    echo "node is not installed"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.7/install.sh | bash
    # in lieu of restarting the shell
    \. "$HOME/.nvm/nvm.sh"
    # Download and install Node.js:
    nvm install 24
    # Verify the Node.js version:
    node -v # Should print "v24.19.0".
    # Verify npm version:
    npm -v # Should print "11.17.0".
    fi

if command -v git &> /dev/null; then
    echo "git is installed"
else
    echo "git is not installed"
    sudo apt install git
fi

if command dotnet --list-sdks &> /dev/null; then
    echo ".Net is installed"
else
    echo ".Net is not installed"
    sudo apt install dotnet-sdk-10.0
fi


