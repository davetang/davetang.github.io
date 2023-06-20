#!/usr/bin/env bash

set -euo pipefail

script_dir=$(dirname $(realpath $0))
cd ${script_dir}/..

usage(){
   >&2 echo "Usage: $0 <name-of-post.md>"
   exit 1
}

if [[ $# -lt 1 ]]; then
   usage
fi

name=$1
if [[ ! ${name} =~ .md$ ]]; then
   >&2 echo Post name needs to end with .md
   exit 1
fi

hugo new --kind post posts/${name}
cat content/posts/${name}
>&2 echo Done
exit 0
