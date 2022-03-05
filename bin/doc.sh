#!/bin/bash

#VERSION=$1

#echo "doc.sh"
#echo "------"

#if [ ! -z "$VERSION" ]; then
#        echo "Setting the τDio version"
#        gsed -i  "s/^TAU_VERSION:.*/TAU_VERSION: $VERSION/"                                     doc/_config.yml
#        gsed -i  "s/^\( *version: \).*/\1$VERSION/"                                             doc/_data/sidebars/mydoc_sidebar.yml
#fi


cp README.md doc/README.md

cd taudio-waa_flutter
bin/doc.sh
cd ..

cd taudio-waa_blazor
bin/doc.sh
cd ..

cd taudio-waa_maui
bin/doc.sh
cd ..

cd taudio-waa_rn
bin/doc.sh
cd ..

cd taudio-waa_ns
bin/doc.sh
cd ..

cd taudio-waa_examples
bin/doc.sh
cd ..

cd taudio-waa_solar2d
bin/doc.sh
cd ..


rm -rf doc/pages/flutter-doc
rm -rf doc/pages/blazor-doc
rm -rf doc/pages/maui-doc
rm -rf doc/pages/rn-doc
rm -rf doc/pages/ns-doc

mkdir -p doc/pages/flutter-doc
mkdir -p doc/pages/blazor-doc
mkdir -p doc/pages/maui-doc
mkdir -p doc/pages/rn-doc
mkdir -p doc/pages/ns-doc

cp -a taudio-waa_flutter/doc/* doc/pages/flutter-doc
cp -a taudio-waa_blazor/doc/* doc/pages/blazor-doc
cp -a taudio-waa_maui/doc/* doc/pages/maui-doc
cp -a taudio-waa_rn/doc/* doc/pages/rn-doc
cp -a taudio-waa_ns/doc/* doc/pages/ns-doc


cp -a taudio-waa_flutter/doc/waa_flutter_sidebar.yml doc/_data/sidebars
cp -a taudio-waa_blazor/doc/waa_blazor_sidebar.yml doc/_data/sidebars
cp -a taudio-waa_maui/doc/waa_maui_sidebar.yml doc/_data/sidebars
cp -a taudio-waa_rn/doc/waa_rn_sidebar.yml doc/_data/sidebars
cp -a taudio-waa_ns/doc/waa_ns_sidebar.yml doc/_data/sidebars




cd doc
echo "Building Jekyll doc"
rm -rf _site  2>/dev/null
rm home.md 2>/dev/null
bundle config set --local path '~/vendor/bundle'
bundle install > /dev/null
bundle exec jekyll build
if [ $? -ne 0 ]; then
    echo "Error"
    exit -1
fi
cd ..



echo "Symbolic links"
cd doc/_site
for dir in $(find pages/flutter-doc/api -type d)
do
        rel=`realpath --relative-to=$dir .`
        for d in */ ; do
            ln -s $rel/$d $dir
        done
done
cd ../..





rm -rf /tmp/zozo.tgz 2>/dev/null
cd doc/_site
tar czf /tmp/zozo.tgz *
scp -P7822 /tmp/zozo.tgz thetatau@thetatau.xyz:/tmp/zozo.tgz
ssh -p7822 thetatau@thetatau.xyz "rm -rf /var/www/vhosts/thetatau.xyz/taudio-waa.thetatau.xyz/*; cd /var/www/vhosts/thetatau.xyz/taudio-waa.thetatau.xyz; tar xzf /tmp/zozo.tgz"
