mkdir -p ~/project/workspace/$ARTIFACT_NAME/include
mkdir -p ~/project/workspace/$ARTIFACT_NAME/lib
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
brew install portaudio
cp -Lr /home/linuxbrew/.linuxbrew/include/* ~/project/workspace/$ARTIFACT_NAME/include
cp -Lr /home/linuxbrew/.linuxbrew/lib/*.so.* ~/project/workspace/$ARTIFACT_NAME/lib
