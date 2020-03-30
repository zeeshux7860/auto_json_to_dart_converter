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
