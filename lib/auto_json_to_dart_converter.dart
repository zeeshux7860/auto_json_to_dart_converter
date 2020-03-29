import 'dart:async';
import 'dart:io';
import 'package:ext_storage/ext_storage.dart';
import 'package:http/http.dart' as http;
import 'package:auto_json_to_dart_converter/convert/json_to_dart.dart';

class AutoJsonToDartConverterGetMethod {
    final String url;
    final String modelName;
  AutoJsonToDartConverterGetMethod(this.url, this.modelName);

   Future<String> get getmethod async {
    var res = await http.get(url);
      final classGenerator = new ModelGenerator(modelName);
    
  DartCode dartCode = classGenerator.generateDartClasses(res.body);
  print(dartCode.warnings.length);
  var path = await ExtStorage.getExternalStorageDirectory();
  var p =await  Directory(path+'/json_to_dart').create(recursive: true);
   File(path+'/json_to_dart/'+modelName.toLowerCase()+'.dart').writeAsStringSync(dartCode.result);
    return dartCode.result;
  }
  
}

class AutoJsonToDartConverterPostMethod {
    final String url;
    final String modelName;
    final dynamic body;
  AutoJsonToDartConverterPostMethod(this.url, this.modelName, this.body);

   Future<String> get postMethod async {
    var res = await http.post(url,body: body);
      final classGenerator = new ModelGenerator(modelName);
    
  DartCode dartCode = classGenerator.generateDartClasses(res.body);
  print(dartCode.warnings.length);
  
   var path = await ExtStorage.getExternalStorageDirectory();
  var p =await  Directory(path+'/json_to_dart').create(recursive: true);
  print(p);
   File(path+'/json_to_dart/'+modelName.toLowerCase()+'.dart').writeAsStringSync(dartCode.result);
    return dartCode.result;
  }
  
}
