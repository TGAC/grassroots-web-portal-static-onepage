#!/bin/bash

for filename in pages/*.html
do
  echo "file $filename"

	base_name=$(basename ${filename})
	echo "base ${base_name}"

	cat partials/header.html ${filename} partials/footer.html > ${base_name}
done

