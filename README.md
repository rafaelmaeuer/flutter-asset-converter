# Flutter Asset Converter

### Description
flutter-asset-converter is a shell script which aim to help with @2x, @3x, etc. naming convention for images.  
Most design tools export assets with @2x, @3x naming convention, but flutter uses folders named 2.0x, 3.0x instead.  
With this script you can restructure and rename folders containing assets with @Nx postfixes and use them with flutter.

<pre>
VERSION: 1.0.0

USAGE:
    ./flutter-asset-converter.sh ~/assets

DESCRIPTION:
    This script aim to rename assets exported in @2x, @3x, etc. naming convention to flutter asset convention.

    - assets - the asset-folder, containing n sub folders with following asset-structure:
      - asset1
        - vector.png
        - vector@2x.png
        - vector@3x.png
      - asset2
        - vector.png
        - vector@2x.png
        - vector@3x.png
      - ...

AUTHOR:
    rafaelmaeuer<email@rafaelmaeuer.de>

EXAMPLE:
    ./flutter-asset-converter.sh ~/Development/Project/Assets/Export

</pre>

🚨 Note: bare script -> no error check or anything fancy yet -> use at own risk 🚨

### Usage

1. Clone

        git clone https://github.com/rafaelmaeuer/flutter-asset-converter
        cd flutter-asset-converter
        chmod +x flutter-asset-converter.sh

2. Run

        rafael:flutter-asset-converter$ ./flutter-asset-converter ~/assets
        process asset1
        process asset2
        process asset3
        process asset4
        process asset5
        done

### Links
* [Flutter - Declaring resolution-aware image assets](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware)
* [Github - Support for @2x, @3x, etc naming convention for images](https://github.com/flutter/flutter/issues/51953)

### License
This script follow MIT license.
