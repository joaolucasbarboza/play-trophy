import 'package:material_ui/material_ui.dart';

class ProgressGameWidget extends StatelessWidget {
  const ProgressGameWidget({
    super.key,
    required this.colorScheme,
    required this.progress,
  });

  final ColorScheme colorScheme;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      constraints: BoxConstraints(
        maxHeight: 30,
        maxWidth: 30,
        minHeight: 30,
        minWidth: 30,
      ),
      backgroundColor: colorScheme.secondaryContainer,
      value: progress,
    );
  }
}