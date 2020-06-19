#!/bin/bash
shell_dir=$(dirname $0)
cd ${shell_dir}

cd ..

npm install

if which xed >/dev/null; then
  xed ./{{.Name}}.xcodeproj
else
  echo "warning: 'xed' command has not installed in PATH"
fi