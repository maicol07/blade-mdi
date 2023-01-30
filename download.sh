#!/bin/sh

echo "Cloining Templarian/MaterialDesign..."
git clone git@github.com:Templarian/MaterialDesign.git

echo "Copying the SVGs..."
cp -r MaterialDesign/svg/* resources/svg/

echo "Modifying the SVGs..."
# find resources/svg -name "*.svg" -exec sed -i '/<svg/{/fill/!s/<svg/<svg fill="currentColor"/;}' {} +

find . -name "*-outline.svg" -exec sed -i 's/<svg/<svg fill="none" stroke="currentColor"/' {} +
find . -name "*.svg" ! -name "*-outline.svg" -exec sed -i 's/<svg/<svg fill="currentColor"/' {} +


# # loop through each file in the directory
# for file in "resources/svg"/*.svg; do
#   # get the file name without the path and extension
#   filename=$(basename "$file" .svg)

#   # check if the file name ends with "-outline"
#   if [[ "$filename" == *"-outline" ]]; then
#     # add fill="none" and stroke="currentColor" properties to the file
#     sed -i 's/<svg/<svg fill="none" stroke="currentColor"/' "$file"
#   else
#     # add fill="currentColor" property to the file
#     sed -i 's/<svg/<svg fill="currentColor"/' "$file"
#   fi
# done

echo "Removing the cloned repo..."
rm -rf MaterialDesign/

echo "SVGs updated!"
