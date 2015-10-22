# App Icon Generator
This simple bash script is an ImageMagick based icon generator for iOS 7 / 8 / 9 apps.

## Requirements
* ImageMagick (`brew install ImageMagick``)

## Installation
1. `git clone https://github.com/tscholze/shell-icon-generator.git` 
1. `cd path/to/cloned-folder`
1. `chmod +x appIconGenerator.sh`

## Usage
* `./appIconGenerator.sh masterImage.png`
* `appicon_output/` contains all generated images 

## Screenshots

![Screenshot](https://github.com/tscholze/shell-icon-generator/blob/master/doc/terminal.png?raw=true "Terminal")

![Screenshot](https://github.com/tscholze/shell-icon-generator/blob/master/doc/finder.png?raw=true "Finder")

## Generated dimensions
* 22x22 (Toolbar and Navigationbar Icon @1x)
* 29x29 (Settings Icon @1x)
* 44x44 (Toolbar and Navigationbar Icon @2x)
* 58x58 (Settings Icon @2x)
* 60x60 (Spotlight Search Icon for Tablets @1x)
* 66x66 (Toolbar and Navigationbar Icon @3x)
* 76x76 (App Icon, Web @1x)
* 80x80 (Spotlight Search Icon @2x)
* 87x87 (Settings Icon @3x)
* 120x120 (Spotlight Search Icon for Tablets, App Icon, Web @2x)
* 152x152 (App Icon, Web @2x for iPads)
* 167x167 (App Icon, Web @2x for iPad Pro)
* 180x180 (Spotlight Search Icon for Tablets, App Icon, Web @3x)
* 1024x1024 (App Store Icon)
* For further information see [offical Apple developer documentation](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/MobileHIG/IconMatrix.html)

# License
Due to the fact that this script is heavly based on ImageMagick. The licence is the [ImageMagick license](http://www.imagemagick.org/script/license.php).
