#!/usr/bin/env bash

CocosCreator --path .  --build "2d2f792f-a40c-49bb-a189-ed176a246e49;debug=false;title=hello_world;packageName=org.cocos2d.helloworld;inlineSpriteFrames=true"

rm build/jsb-default/src/jsb_polyfill.*

./1.sh

rm -rf ../hotupdate/public/remote-assets/subgame/res
rm -rf ../hotupdate/public/remote-assets/subgame/src

cp -r ./build/jsb-default/res/  ../hotupdate/public/remote-assets/subgame/res
cp -r ./build/jsb-default/src/  ../hotupdate/public/remote-assets/subgame/src
