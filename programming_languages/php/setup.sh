echo "macOS specific: install packages"
    brew install autoconf automake bison freetype gd gettext icu4c krb5 libedit libiconv libjpeg libpng libxml2 libzip pkg-config re2c zlib
echo "done"

echo "install libodfgen: solves No package 'oniguruma' found"
    brew install oniguruma
    brew install libodfgen
    brew install libonig
echo "done"

echo "adding asdf php plugin"
    asdf plugin add php
echo "done"

echo "installing php"
    asdf install php latest
echo "done"

echo "set latest version to system wide version"
    asdf global php latest
echo "done"

echo "optional packages which enable additional extensions to be enabled"
    brew install gmp libsodium imagemagick
echo "done"

echo "reshim composer"
    composer global require friendsofphp/php-cs-fixer
    asdf reshim
    php-cs-fixer --version
echo "done"