import 'package:flutter/material.dart';
import 'package:play_trophy/ui/core/ui/navigation_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  final String name = "Teste";
  final String plataform = "PlayStation5";

  const HomeScreen({super.key});

  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  final Duration durationMs = Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(),
    );
  }
}
