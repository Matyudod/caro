import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import 'config/config.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
  double _currentSliderValue = (volume * 10 / 4).round() * 1.0;
  int volumeMute = 2;
  List<IconData> iconVolumne = [
    Icons.volume_off_sharp,
    Icons.volume_down_sharp,
    Icons.volume_up_sharp,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          settingTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "Light/Dark :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Switch(
                    onChanged: (bool value) async {
                      await DynamicTheme.of(context)!
                          .setTheme(isSwitched ? 0 : 1);
                      if (isSwitched == false) {
                        setState(() {
                          isSwitched = true;
                        });
                      } else {
                        setState(() {
                          isSwitched = false;
                        });
                      }
                    },
                    value: isSwitched,
                    activeColor: Theme.of(context).primaryColor,
                    inactiveThumbColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Music :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Slider(
                    value: _currentSliderValue,
                    max: volume * 10,
                    divisions: (volume * 10).round(),
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                        if (value == 0) {
                          volumeMute = 0;
                        } else if (value == 8) {
                          volumeMute = 2;
                        } else {
                          volumeMute = 1;
                        }
                        audioPlayer.setVolume(_currentSliderValue / 10).then(
                              (value) => {},
                            );
                      });
                    },
                    activeColor: Theme.of(context).primaryColor,
                    inactiveColor: Theme.of(context).primaryColor,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (_currentSliderValue == 0) {
                          _currentSliderValue = volume * 10;
                          volumeMute = 2;
                          audioPlayer.setVolume(_currentSliderValue / 10).then(
                                (value) => {},
                              );
                        } else {
                          _currentSliderValue = 0;
                          volumeMute = 0;
                          audioPlayer.setVolume(_currentSliderValue / 10).then(
                                (value) => {},
                              );
                        }
                      });
                    },
                    child: Icon(
                      iconVolumne[volumeMute],
                      size: 50.0,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
