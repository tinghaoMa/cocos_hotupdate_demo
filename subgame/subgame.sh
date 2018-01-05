#!/usr/bin/env bash

rm -rf ../hotupdate/public/remote-assets/subgame/peision.manifest
rm -rf ../hotupdate/public/remote-assets/subgame/version.manifest
rm -rf ../hotupdate/public/remote-assets/subgame/res/*
rm -rf ../hotupdate/public/remote-assets/subgame/src/*

CocosCreator --path .  --build "2d2f792f-a40c-49bb-a189-ed176a246e49;debug=false;title=hello_world;packageName=org.cocos2d.helloworld;inlineSpriteFrames=true"

rm build/jsb-default/src/jsb_polyfill.*



cp -r ./build/jsb-default/res/  ../hotupdate/public/remote-assets/subgame/res
cp -r ./build/jsb-default/src/  ../hotupdate/public/remote-assets/subgame/src


./1.sh