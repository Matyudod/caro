import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class MapStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/map.txt');
  }

  // Future<List<IconData?>> readCounter() async {
  //   try {
  //     final file = await _localFile;

  //     // Read the file
  //     final contents = await file.readAsString();
  //     List<IconData?> items;
  //     List<String> itemString = contents.split(", ");
  //     for (var i = 0; i < itemString.length; i++) {
  //       items.add(Color(itemString[i]));
  //     }
  //     return;
  //   } catch (e) {
  //     // If encountering an error, return 0
  //     return 0;
  //   }
  // }

  Future<File> writeCounter(map) async {
    final file = await _localFile;
    return file.writeAsString('$map');
  }
}
