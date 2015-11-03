#!/bin/bash

# Copyright 2015 Tobias Scholze
#
#   Licensed under the ImageMagick License (the "License"); you may not use
#   this file except in compliance with the License.  You may obtain a copy
#   of the License at
#
#     http://www.imagemagick.org/script/license.php
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#   WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
#   License for the specific language governing permissions and limitations
#   under the License.

# Constants
COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_DEFAULT='\033[0m'
OUTPUT_DIR='appicon_output'

# Check if first argument is set
 if [[ ! -n $1 ]]
then
	echo -e "${COLOR_RED}ERROR:${COLOR_DEFAULT} Usage: '$0 path/to/master-file.png'"
	exit 1
fi

# Check if file type is valid
if [ $1 != *.png ]
then 
	echo -e "${COLOR_RED}ERROR:${COLOR_DEFAULT} Please use a *.png master file"
	exit 1
fi

# Check if file exists
if [[ ! -f $1 ]]
then
	echo -e "${COLOR_RED}ERROR:\033[0m File ${1} does not exist"
	exit 1
fi

echo "Deleting deprecated output folder"
rm -rf $OUTPUT_DIR

echo "Creating new output folder $PWD/$OUTPUT_DIR/"
mkdir $OUTPUT_DIR
echo "---"

echo "Using master file: $1"
echo "---"

echo "Generating 22x22 (Toolbar and Navigationbar Icon @1x)"
convert $1 -resize 22x22! $OUTPUT_DIR/$(basename $1 .png)-22.png

echo "Generating 29x29 (Settings Icon @1x)"
convert $1 -resize 29x29! $OUTPUT_DIR/$(basename $1 .png)-29.png

echo "Generating 44x44 (Toolbar and Navigationbar Icon @2x)"
convert $1 -resize 44x44! $OUTPUT_DIR/$(basename $1 .png)-44.png

echo "Generating 48x48 (Apple Watch 38mm Notification center Icon)"
convert $1 -resize 48x48! $OUTPUT_DIR/$(basename $1 .png)-48.png

echo "Generating 55x55 (Apple Watch 42mm Notification center Icon)"
convert $1 -resize 55x55! $OUTPUT_DIR/$(basename $1 .png)-55.png

echo "Generating 58x58 (Settings Icon, Apple Watch 38mm App Icon @2x)"
convert $1 -resize 58x58! $OUTPUT_DIR/$(basename $1 .png)-58.png

echo "Generating 60x60 (Spotlight Search Icon for Tablets @1x)"
convert $1 -resize 60x60! $OUTPUT_DIR/$(basename $1 .png)-60.png

echo "Generating 66x66 (Toolbar and Navigationbar Icon @3x)"
convert $1 -resize 66x66! $OUTPUT_DIR/$(basename $1 .png)-66.png

echo "Generating 76x76 (App Icon, Web @1x)"
convert $1 -resize 76x76! $OUTPUT_DIR/$(basename $1 .png)-76.png

echo "Generating 80x80 (Spotlight Search Icon @2x, Apple Watch Home Screen, 38mm Long-Look)"
convert $1 -resize 80x80! $OUTPUT_DIR/$(basename $1 .png)-80.png

echo "Generating 87x87 (Settings Icon @3x, Apple Watch 42mm App Icon @2x)"
convert $1 -resize 87x87! $OUTPUT_DIR/$(basename $1 .png)-87.png

echo "Generating 88x88 (Apple Watch 42mm Long-Look)"
convert $1 -resize 88x88! $OUTPUT_DIR/$(basename $1 .png)-88.png

echo "Generating 120x120 (Spotlight Search Icon for Tablets, App Icon, Web @2x)"
convert $1 -resize 120x120! $OUTPUT_DIR/$(basename $1 .png)-120.png

echo "Generating 152x152 (App Icon, Web @2x for iPads)"
convert $1 -resize 152x152! $OUTPUT_DIR/$(basename $1 .png)-152.png

echo "Generating 167x167 (App Icon, Web @2x for iPad Pro)"
convert $1 -resize 167x167! $OUTPUT_DIR/$(basename $1 .png)-167.png

echo "Generating 172x172 (Apple Watch 38mm Short-Look Icon)"
convert $1 -resize 172x172! $OUTPUT_DIR/$(basename $1 .png)-172.png

echo "Generating 180x180 (Spotlight Search Icon for Tablets, App Icon, Web @3x)"
convert $1 -resize 180x180! $OUTPUT_DIR/$(basename $1 .png)-180.png

echo "Generating 196x196 (Apple Watch 42mm Short-Look Icon)"
convert $1 -resize 196x196! $OUTPUT_DIR/$(basename $1 .png)-196.png

echo "Generating 1024x1024 (App Store Icon)"
convert $1 -resize 1024x1024! $OUTPUT_DIR/$(basename $1 .png)-1024.png

echo "---"
echo -e "${COLOR_GREEN}FINISHED${COLOR_DEFAULT}"
echo "CAUTION: Launch screen image has to be generated by yourself!"

exit 0