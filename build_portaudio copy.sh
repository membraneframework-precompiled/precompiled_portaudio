shopt -s expand_aliases
mkdir ~/.local  
mkdir -p ~/project/workspace/$ARTIFACT_NAME/include
mkdir -p ~/project/workspace/$ARTIFACT_NAME/lib
cd ~/.local
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
alias brew=~/.local/homebrew/bin/brew
export XML_CATALOG_FILES=`pwd`/etc/xml/catalog
brew install --build-from-source portaudio  # for linux: brew install --build-from-source portaudio
cp -r ~/.local/homebrew/include/* ~/project/workspace/$ARTIFACT_NAME/include
cp -r ~/.local/homebrew/lib/*.dylib ~/project/workspace/$ARTIFACT_NAME/lib

