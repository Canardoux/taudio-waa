#!/bin/bash

#VERSION=$1
TXT=$1

if [ -z "$TXT" ]; then
        echo "Correct syntax is $0 <TEXT>"
        exit -1
fi

echo "gp.sh"
echo "------"

#if [ ! -z "$VERSION" ]; then
#        echo "Setting the τDio version"
#        gsed -i  "s/^TAU_VERSION:.*/TAU_VERSION: $VERSION/"                                     doc/_config.yml
#        gsed -i  "s/^\( *version: \).*/\1$VERSION/"                                             doc/_data/sidebars/mydoc_sidebar.yml
#fi

cd taudio-waa_blazor
bin/gp.sh "$TXT"
cd ..

cd taudio-waa_examples
bin/gp.sh "$TXT"
cd ..

cd taudio-waa_flutter
bin/gp.sh "$TXT"
cd ..

cd taudio-waa_maui
bin/gp.sh "$TXT"
cd ..

cd taudio-waa_ns
bin/gp.sh "$TXT"
cd ..

cd taudio-waa_rn
bin/gp.sh "$TXT"
cd ..

cd taudio-waa_solar2d
bin/gp.sh "$TXT"
cd ..


git add .
git commit -m "$TXT"
git config pull.rebase false
git pull
git push

