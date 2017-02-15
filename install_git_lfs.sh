#!/bin/bash

DIR=$GOPATH/src/github.com/git-lfs/
rm -rf $DIR
mkdir -p $DIR
git clone git@github.com:git-lfs/git-lfs ${DIR}/git-lfs
cd ${DIR}/git-lfs
git co release-release-1.5-backport-1737
go install
git-lfs version
git lfs install
