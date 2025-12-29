#!/bin/bash
set -xeo pipefail

for i in patches/*.patch; do
	branch="${i##patches/}"
	branch="${branch%%.patch}"
	git diff "$branch^" "$branch" | diff - "$i"
done

