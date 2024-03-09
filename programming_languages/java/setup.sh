#!/bin/zsh
echo "adding asdf openjdk plugin"
asdf plugin add java
echo "done"

echo "installing java"
asdf install java temurin-19.0.2+7
echo "done"

echo "set latest version to system wide version"
asdf global java temurin-19.0.2+7
echo "done"

echo "updating automated JAVA_HOME export"
echo ". ~/.asdf/plugins/java/set-java-home.zsh" >> ~/.zshrc
echo "done"

