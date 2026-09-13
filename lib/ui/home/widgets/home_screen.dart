import 'package:carousel_slider/carousel_slider.dart';

import 'package:material_ui/material_ui.dart';
import 'package:play_trophy/ui/core/ui/navigation_bar_widget.dart';
import 'package:play_trophy/ui/home/widgets/carousel_content.dart';

class HomeScreen extends StatefulWidget {
  final String name = "Teste";
  final String plataform = "PlayStation5";
  final String nikename = "zValla_";

  const HomeScreen({super.key});

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
      CarouselContent(nikename: widget.nikename),
      CarouselContent(nikename: widget.nikename),
    ];

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
            ],
          ),
        ],
      ),
    );
  }
}
