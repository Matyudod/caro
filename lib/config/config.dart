export './button.dart';
export './config.dart';
export './theme.dart';
export './audio.dart';

import './theme.dart';
import 'package:audioplayers/audioplayers.dart';

final AudioPlayer audioPlayer = AudioPlayer();
final AudioPlayer audioTap = AudioPlayer();
final AudioPlayer audioWin = AudioPlayer();
const String title = "Caro Game";
const double volume = 0.8;
const double minVolume = 0.0;
const String settingTitle = "Setting";
final themeCollection = AppTheme.theme();
