echo "installing scala"
asdf plugin add scala
asdf install scala latest
asdf global scala latest
echo "done"

echo "installing sbt"
asdf plugin add sbt
asdf install sbt latest
asdf global sbt latest
echo "done"

echo "installing coursier"
asdf plugin add coursier
asdf install coursier latest
asdf global coursier latest
echo "done"

echo "installing scalafmt"
coursier install scalafmt
echo "done"

echo "adding Coursier binary library to PATH"
echo 'PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"' >> ~/.zshenv
echo "done"