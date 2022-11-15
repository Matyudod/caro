import 'package:audioplayers/audioplayers.dart';

class Audio {
  static Future bachgroundAudio(AudioPlayer audioPlayer, double volume) async {
    final Source source = AssetSource('audios/bg.mp3');
    await audioPlayer.play(source, volume: volume / 4);
  }

  static Future tapAudio(AudioPlayer audioPlayer, double volume) async {
    final Source source = AssetSource('audios/tap.mp3');
    await audioPlayer.play(source, volume: volume);
  }

  static Future winAudio(AudioPlayer audioPlayer, double volume) async {
    final Source source = AssetSource('audios/win.mp3');
    await audioPlayer.play(source, volume: volume / 4);
  }
}
