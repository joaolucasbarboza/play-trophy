import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

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
          selectedIcon: Icon(Iconsax.home_2),
          icon: Icon(Iconsax.home_2_copy),
          label: "Início",
        ),
        NavigationDestination(
          selectedIcon: Icon(Iconsax.book_1),
          icon: Icon(Iconsax.book_1_copy),
          label: "Biblioteca",
        ),
        NavigationDestination(
          selectedIcon: Icon(Iconsax.user),
          icon: Icon(Iconsax.user_copy),
          label: "Perfil",
        ),
      ],
    );
  }
}
