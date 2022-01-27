#!/bin/bash
shell_dir=$(dirname $0)
cd ${shell_dir}

# open with vscode
if which code >/dev/null; then
  code ..
else
  echo "warning: 'code' command has not installed in PATH"
fi