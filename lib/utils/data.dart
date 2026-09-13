import 'package:play_trophy/utils/images_strings.dart';

enum Awards {
  award1(ImagesStrings.awardPlatinum, "1200/5000"),
  award2(ImagesStrings.awardGold, "1000/5000"),
  award3(ImagesStrings.awardSilver, "800/5000"),
  award4(ImagesStrings.awardBronze, "600/5000");

  const Awards(this.pathImage, this.points);

  final String pathImage;
  final String points;
}