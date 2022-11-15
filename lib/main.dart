// ignore_for_file: library_private_types_in_public_api

import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/config.dart';
import 'home.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
  //   runApp(const CaroGameApp());
  // });
  runApp(const CaroGameApp());
}

class CaroGameApp extends StatelessWidget {
  const CaroGameApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Audio.bachgroundAudio(audioPlayer, volume).then(
      (value) => {},
    );
    return DynamicTheme(
        themeCollection: themeCollection,
        defaultThemeId: 0,
        builder: (context, theme) {
          return MaterialApp(
            title: title,
            theme: theme,
            home: const Home(),
          );
        });
  }
}
