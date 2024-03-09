echo "adding asdf nodejs plugin"
    asdf plugin add nodejs
echo "done"

echo "installing nodejs"
    asdf install nodejs latest
echo "done"

echo "set latest version to system wide version"
    asdf global nodejs latest
echo "done"

echo "adding asdf pnpm plugin"
    asdf plugin add pnpm
echo "done"

echo "installing pnpm"
    asdf install pnpm latest
    pnpm setup
echo "done"

echo "set latest version to system wide version"
    asdf global pnpm latest
echo "done"

echo "installing pm2"
    pnpm install pm2 -g
echo "done"
