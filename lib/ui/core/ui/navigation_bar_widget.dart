import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

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
    final ThemeData theme = Theme.of(context);
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      selectedIndex: currentPageIndex,
      animationDuration: durationMs,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      destinations: [
        NavigationDestination(
          selectedIcon: Icon(LucideIcons.door_open),
          icon: Icon(LucideIcons.door_closed),
          label: "Início",
        ),
        NavigationDestination(
          selectedIcon: Icon(LucideIcons.library_big),
          icon: Icon(LucideIcons.library),
          label: "Biblioteca",
        ),
        NavigationDestination(
          selectedIcon: Icon(LucideIcons.user_round),
          icon: Icon(LucideIcons.user_round),
          label: "Perfil",
        ),
      ],
    );
  }
}
