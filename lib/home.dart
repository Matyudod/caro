// ignore_for_file: library_private_types_in_public_api

import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import 'config/config.dart';
import 'about_us.dart';
import 'detail.dart';
import 'setting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int dropdownValue = 0;
  @override
  Widget build(BuildContext context) {
    Color textColor = Theme.of(context).primaryColor;
    Color backgroundColor = Theme.of(context).backgroundColor;
    dropdownValue = DynamicTheme.of(context)!.themeId;
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonCustomTheme.style(textColor, backgroundColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const DetailsScreen();
                    },
                  ),
                );
              },
              child: Text(
                'Start Game',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            const SizedBox(height: 15.0),
            TextButton(
              style: ButtonCustomTheme.style(textColor, backgroundColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AboutUsScreen(title: title);
                    },
                  ),
                );
              },
              child: Text(
                'About',
                style: Theme.of(context).textTheme.headline2,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).backgroundColor,
        child: Icon(
          Icons.settings,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const SettingScreen();
              },
            ),
          )
        },
      ),
    );
  }
}
