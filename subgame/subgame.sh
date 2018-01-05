#!/usr/bin/env bash
./1.sh

CocosCreator --path .  --build "2d2f792f-a40c-49bb-a189-ed176a246e49;debug=false;title=hello_world;packageName=org.cocos2d.helloworld;inlineSpriteFrames=true"

rm build/jsb-default/src/jsb_polyfill.*
