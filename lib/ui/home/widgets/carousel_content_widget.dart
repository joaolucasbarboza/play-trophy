
import 'package:material_ui/material_ui.dart';
import 'package:play_trophy/utils/data.dart';
import 'package:play_trophy/utils/images_strings.dart';

class CarouselContentWidget extends StatefulWidget {
  final String nikename;

  const CarouselContentWidget({
    super.key,
    required this.nikename,
  });

  @override
  State<StatefulWidget> createState() => _CarouselContentState();
}

class _CarouselContentState extends State<CarouselContentWidget> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 6,
            children: [
              Image(
                image: AssetImage(ImagesStrings.playstationIcon),
                width: 24,
                height: 24,
              ),
              Text(widget.nikename, style: textTheme.labelLarge),
            ],
          ),
          Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Awards.values.map((Awards award) {
              return Column(
                children: [
                  Image(
                    image: AssetImage(award.pathImage),
                    width: 52,
                    height: 52,
                  ),
                  Text(
                    award.points,
                    style: textTheme.labelMedium?.copyWith(
                      color: colorScheme.secondary,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
