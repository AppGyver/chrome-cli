#!/usr/bin/env sh

PACKAGE_NAME=chrome-cli-osx.tgz

cd npm
rm *.tgz
npm pack


mv chrome-cli* $PACKAGE_NAME
s3cmd put --acl-public --guess-mime-type $PACKAGE_NAME s3://appgyver-steroids
rm chrome-cli-osx.tgz
