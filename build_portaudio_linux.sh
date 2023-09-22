mkdir -p ~/project/workspace/$ARTIFACT_NAME/include
mkdir -p ~/project/workspace/$ARTIFACT_NAME/lib
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install portaudio  # for linux: brew install --build-from-source portaudio
cp -r /home/linuxbrew/.linuxbrew/include/* ~/project/workspace/$ARTIFACT_NAME/include
cp -r /home/linuxbrew/.linuxbrew/lib/*.so.* ~/project/workspace/$ARTIFACT_NAME/lib
cd ~/project/workspace/$ARTIFACT_NAME/lib
for f in *.dylib;
do
    install_name_tool -id "@rpath/$f" $f
done
