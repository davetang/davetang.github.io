#!/usr/bin/env bash

set -euo pipefail

script_dir=$(dirname $(realpath $0))
cd ${script_dir}/..

name=my-test-post.md
rm -rf content/posts/${name}
hugo new --kind post posts/${name}
cat content/posts/${name}
rm content/posts/${name}
>&2 echo Done
exit 0
