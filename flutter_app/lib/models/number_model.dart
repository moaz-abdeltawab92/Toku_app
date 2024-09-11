import 'package:audioplayers/audioplayers.dart';

class Data {
  final String sound;
  final String? image;
  final String jbName;
  final String enName;
  const Data({
    required this.sound,
    this.image,
    required this.jbName,
    required this.enName,
  });
  playSound() {
    final player = AudioPlayer();
    AudioPlayer().play(AssetSource(sound));
  }
}
