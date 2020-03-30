# Auto Json to Dart Converter

![AUTO JSON TO DART CONVERT](https://user-images.githubusercontent.com/45489310/77943676-7734ab00-7272-11ea-92e6-1776af703364.png)

Just provide the api link and Dart is created on the device with folder name json_to_dart.

## Installation

First, add `auto_json_to_dart_converter:` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

Import 

```dart
import 'package:auto_json_to_dart_converter/auto_json_to_dart_converter.dart';
```

Just Provide api link and class name

```dart
Future<void> getdata() async {
    AutoJsonToDartConverterGetMethod(
            'https://raw.githubusercontent.com/javiercbk/json_to_dart/master/example/sample.json',
            'Zeeshan',null)
        .getmethod
        .then((onValue) {
      print(onValue.toString());
    }).catchError((onError) {
      print(onError.toString());
    });
  }
```

Special thanks to [Javiercbk](https://github.com/javiercbk/json_to_dart)

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.


MIT License

Copyright (c) 2020 Zeeshux7860

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.