import 'package:material_ui/material_ui.dart';
import 'package:play_trophy/ui/core/ui/progress_game_widget.dart';
import 'package:play_trophy/ui/home/widgets/overline_title_game_widget.dart';

class GamesWidget extends StatefulWidget {
  const GamesWidget({
    super.key,
    required this.pathImage,
    required this.name,
    required this.plataform,
    required this.status,
    required this.progress,
  });

  final String pathImage;
  final String name;
  final String plataform;
  final String status;
  final double progress;

  @override
  State<GamesWidget> createState() => _GamesWidgetState();
}

class _GamesWidgetState extends State<GamesWidget> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10.0),
        child: Image(
          image: AssetImage(widget.pathImage),
          isAntiAlias: true,
          width: 42,
          height: 42,
          fit: BoxFit.cover,
          alignment: AlignmentGeometry.center,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OverlineTitleGame(
            textTheme: textTheme,
            colorScheme: colorScheme,
            plataform: widget.plataform,
            status: widget.status,
          ),
          Text(widget.name, overflow: TextOverflow.ellipsis),
        ],
      ),
      trailing: ProgressGameWidget(
        colorScheme: colorScheme,
        progress: widget.progress,
      ),
    );
  }
}