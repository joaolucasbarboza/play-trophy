import 'package:flutter/material.dart';
import 'package:material_3_expressive/components/progress_indicators/m3e_progress_indicators.dart';
import 'package:play_trophy/ui/core/ui/navigation_bar_widget.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

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
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(),
      appBar: AppBar(title: Text("Play Trophy")),
      body: ListView(
        children: [
          Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text("Troféus", style: textTheme.headlineSmall,),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: CardInfo.values.map((CardInfo info) {
                    if (info.label.isEmpty) return const SizedBox.shrink();
                    return Container(
                      width: 300,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              M3EProgressIndicator.circularWavy(
                                trackColor: colorScheme.inversePrimary,
                                trackStrokeWidth: 3,
                                color: colorScheme.primary,
                                value: 0.3
                              ),
                              Text(
                                info.label,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                                overflow: TextOverflow.clip,
                                softWrap: false,
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Iconsax.award_copy, size: 60,),
                              Text("1200/5000")
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum CardInfo {
  camera('Cameras', Icons.video_call, Color(0xff2354C7), Color(0xffECEFFD)),
  lighting('Lighting', Icons.lightbulb, Color(0xff806C2A), Color(0xffFAEEDF)),
  climate('Climate', Icons.thermostat, Color(0xffA44D2A), Color(0xffFAEDE7)),
  wifi('Wifi', Icons.wifi, Color(0xff417345), Color(0xffE5F4E0)),
  media('Media', Icons.library_music, Color(0xff2556C8), Color(0xffECEFFD)),
  security(
    'Security',
    Icons.crisis_alert,
    Color(0xff794C01),
    Color(0xffFAEEDF),
  ),
  safety(
    'Safety',
    Icons.medical_services,
    Color(0xff2251C5),
    Color(0xffECEFFD),
  ),
  more('', Icons.add, Color(0xff201D1C), Color(0xffE3DFD8));

  const CardInfo(this.label, this.icon, this.color, this.backgroundColor);
  final String label;
  final IconData icon;
  final Color color;
  final Color backgroundColor;
}
