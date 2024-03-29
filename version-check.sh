#!/bin/bash

set -xe
apt-get update

check_version () {
	NAME="$1"

	TMPF="$(mktemp)"
	# apt-get does not provide "list" command, so we have to use apt.
	apt list "$NAME" 2> /dev/null | grep -F "$NAME/stable " | tee "$TMPF"

	if [ "$(wc -l < "$TMPF")" != "1" ]; then
		echo "Error: expecting only one result for '$NAME' in 'apt list'."
		return 1
	fi

	EXPECTED_VERSION="$(cat "versions/$NAME")"
	ACTUAL_VERSION="$(cut -d ' ' -f 2 "$TMPF")"

	if [ "$ACTUAL_VERSION" != "$EXPECTED_VERSION" ]; then
		echo "$ACTUAL_VERSION" > "versions/$NAME"
		echo "Error: '$NAME' updated: '$EXPECTED_VERSION' -> '$ACTUAL_VERSION'."
		return 2
	fi

	return 0
}

FAIL='n'
for i in $(ls 'versions/'); do
	if ! check_version "$i"; then
		FAIL='y'
	fi
done

if [ "$FAIL" = 'n' ]; then
	exit 0
fi

# Push and fail
# Need to set GitHub "Workflow permissions" to "Read and write permissions"
cd 'versions/'
git config user.email "lxylxy123456@github-user"
git config user.name "lxylxy123456"
git add -A
git commit -m 'Auto commit by version-check.sh'
git push origin version-check
exit 1

