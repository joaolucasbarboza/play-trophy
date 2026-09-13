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

enum Games {
  rdrTwo(
    ImagesStrings.rdrTwo,
    "Red Dead Redemption 2",
    "PS5",
    "Em jogatina",
    0.2,
  ),

  gtaSix(
    ImagesStrings.gtaSix,
    "Grand Theft Auto VI",
    "Steam",
    "Em jogatina",
    0.4,
  ),

  dsTwo(
    ImagesStrings.dsTwo,
    "Death Stranding 2: On the Beach",
    "PS5",
    "Em jogatina",
    0.7,
  );

  const Games(
    this.pathImage,
    this.name,
    this.plataform,
    this.status,
    this.progress,
  );

  final String pathImage;
  final String name;
  final String plataform;
  final String status;
  final double progress;
}
