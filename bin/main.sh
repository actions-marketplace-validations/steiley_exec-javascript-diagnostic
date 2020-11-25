#!/bin/bash
npm install ${INPUT_PACKAGE_NAME}
cat package.json | grep -o -E "(${INPUT_PACKAGE_NAME}\-+(\w|\-)+)" | xargs npm install
if [ -z "${INPUT_EXECUTE_COMMAND}" ]; then
  INPUT_EXECUTE_COMMAND=${INPUT_PACKAGE_NAME}
fi
npx ${INPUT_EXECUTE_COMMAND} ${INPUT_TARGET_PATH}
