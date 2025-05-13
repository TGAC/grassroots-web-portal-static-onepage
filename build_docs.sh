#!/bin/bash

# run as ./build_docs.sh <OUTPUT DIR>

for filename in pages/*.html
do
  echo "file $filename"

	base_name=$(basename ${filename})
	echo "base ${base_name}"

	cat partials/header.html ${filename} partials/footer.html > ${base_name}
done


for filename in pages/dsw/*.html
do
  echo "file $filename"

	base_name=$(basename ${filename})
	echo "base ${base_name}"

	cat partials/header.html ${filename} partials/footer.html > dsw/${base_name}
done

echo "Copying files to $1"
cp *.html $1


mkdir -p $1/dsw
cp dsw/*.html $1/dsw/
