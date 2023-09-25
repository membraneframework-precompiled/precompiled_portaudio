mkdir -p ~/project/workspace/$ARTIFACT_NAME/include
mkdir -p ~/project/workspace/$ARTIFACT_NAME/lib
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install portaudio
cp -r /usr/local/include/* ~/project/workspace/$ARTIFACT_NAME/include
cp -r /usr/local/lib/*.dylib ~/project/workspace/$ARTIFACT_NAME/lib
cd ~/project/workspace/$ARTIFACT_NAME/lib
for f in *.dylib;
do
    install_name_tool -id "@rpath/$f" $f
done
