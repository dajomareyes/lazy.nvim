#!/bin/bash

# requires homebrew is installed

brew install wget
brew install curl 
brew install unzip 
brew install git 
brew install make
brew install pip
brew install python
brew install npm 
brew install node
brew install luarocks
brew install fd
brew install ripgrep
brew install cargo

# c sharp support but will require 
# additional settings tweak in lsp config
brew install mono
# keep track of where this is located
brew install dotnet

# check for node installation
if [ -x "$(command -v node)" ]; then
    echo "node is installed"
else
    echo "node is not installed"
    exit 1
fi

# globally install npm packages for lsp support
npm i -g vscode-langservers-extracted
