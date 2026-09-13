import 'package:material_ui/material_ui.dart';
import 'package:play_trophy/ui/core/ui/text_label_medium_on_surface_variant_widget.dart';

class OverlineTitleGame extends StatelessWidget {
  const OverlineTitleGame({
    super.key,
    required this.textTheme,
    required this.colorScheme,
    required this.plataform,
    required this.status,
  });

  final TextTheme textTheme;
  final ColorScheme colorScheme;
  final String plataform;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        TextLabelMediumOnSurfaceVariant(
          text: plataform,
          textTheme: textTheme,
          colorScheme: colorScheme,
        ),
        Text("-"),
        TextLabelMediumOnSurfaceVariant(
          text: status,
          textTheme: textTheme,
          colorScheme: colorScheme,
        ),
      ],
    );
  }
}