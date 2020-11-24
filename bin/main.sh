#!/bin/bash
npm install ${INPUT_PACKAGE_NAME}
cat package.json | grep -o -E "(${INPUT_PACKAGE_NAME}\-+(\w|\-)+)" | xargs npm install
npx ${INPUT_PACKAGE_NAME} ${INPUT_TARGET_PATH}
