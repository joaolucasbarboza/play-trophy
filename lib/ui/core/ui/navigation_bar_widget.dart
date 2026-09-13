import 'package:material_ui/material_ui.dart';
import 'package:play_trophy/utils/icons.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidget();
}

class _NavigationBarWidget extends State<NavigationBarWidget> {
  int currentPageIndex = 0;
  final Duration durationMs = Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      height: 60,
      selectedIndex: currentPageIndex,
      animationDuration: durationMs,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      destinations: [
        NavigationDestination(
          selectedIcon: IconsTheme.homeRounded,
          icon: IconsTheme.homeRounded,
          label: "Início",
        ),
        NavigationDestination(
          selectedIcon: IconsTheme.bookRounded,
          icon: IconsTheme.bookRounded,
          label: "Biblioteca",
        ),
        NavigationDestination(
          selectedIcon: IconsTheme.userRounded,
          icon: IconsTheme.userRounded,
          label: "Perfil",
        ),
      ],
    );
  }
}
