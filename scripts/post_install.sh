#!/usr/bin/env bash
set -e

cd /node
npm install

cd /node/public
bower install --allow-root ../bower.json
