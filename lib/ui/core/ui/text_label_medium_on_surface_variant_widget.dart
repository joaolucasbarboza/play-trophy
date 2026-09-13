import 'package:material_ui/material_ui.dart';

class TextLabelMediumOnSurfaceVariant extends StatelessWidget {
  const TextLabelMediumOnSurfaceVariant({
    super.key,
    required this.text,
    required this.textTheme,
    required this.colorScheme,
  });

  final String text;
  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textTheme.labelMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
    );
  }
}