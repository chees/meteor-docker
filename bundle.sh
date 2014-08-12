#!/bin/bash

rm -rf .bundle
cd sample
meteor bundle --directory ../.bundle
cd ../.bundle
rm -rf programs/server/node_modules/fibers
rm -rf programs/server/node_modules/bcrypt
npm install fibers@1.0.1
npm install bcrypt@0.7.7
