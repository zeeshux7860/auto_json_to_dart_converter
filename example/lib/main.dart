import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dartpoet/dartpoet.dart';
import 'package:flutter/services.dart';
import 'package:auto_json_to_dart_converter/auto_json_to_dart_converter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    // tests();
    getdata();
  }

 
  Future<void> getdata() async {
    AutoJsonToDartConverterGetMethod(
            'https://raw.githubusercontent.com/javiercbk/json_to_dart/master/example/sample.json',
            'Zeeshan')
        .getmethod
        .then((onValue) {
      print(onValue.toString());
    }).catchError((onError) {
      print(onError.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('great'),
        ),
      ),
    );
  }
}
