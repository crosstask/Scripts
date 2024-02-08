#!/bin/bash

# brew
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "|   [✓] Installed homebrew"
else
    echo "|   [log] Homebrew is already installed"
fi

# python
if ! command -v python3.12 &> /dev/null
then
    brew install python@3.12
    brew install python-tk@3.12
    echo "|   [✓] Installed python"
else
    echo "|   [log] Python is already installed"
fi

# packages
pip3 install -r https://raw.githubusercontent.com/crosstask/CrossTask/main/requirements.txt
echo "|   [✓] Installed packages"
echo ""
echo ""
echo "-> Installed/updated all successfully ✓"