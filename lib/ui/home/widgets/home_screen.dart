import 'package:carousel_slider/carousel_slider.dart';

import 'package:material_ui/material_ui.dart';
import 'package:play_trophy/ui/core/ui/navigation_bar_widget.dart';
import 'package:play_trophy/ui/home/widgets/carousel_content_widget.dart';
import 'package:play_trophy/ui/home/widgets/games_widget.dart';
import 'package:play_trophy/utils/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  final String name = "Teste";
  final String plataform = "PlayStation5";
  final String nickname = "zValla_";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  final Duration durationMs = Duration(milliseconds: 500);
  final int percentage = 36;

  @override
  Widget build(BuildContext context) {
    final carouselItems = [
      CarouselContentWidget(nickname: widget.nickname),
      CarouselContentWidget(nickname: widget.nickname),
    ];

    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(),
      appBar: AppBar(title: Text("Logo")),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: carouselItems,
                options: CarouselOptions(
                  height: 148,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  scrollPhysics: const BouncingScrollPhysics(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jogos",
                      style: textTheme.titleLarge?.copyWith(
                        color: colorScheme.secondary,
                        fontWeight: FontWeight(500),
                      ),
                    ),
                    Column(
                      children: Games.values.map((Games game) {
                        return GamesWidget(
                          pathImage: game.pathImage,
                          name: game.name,
                          plataform: game.plataform,
                          status: game.status,
                          progress: game.progress,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
