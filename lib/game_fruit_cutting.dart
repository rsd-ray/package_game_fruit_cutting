import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';

import 'main_router_game.dart';
import 'web_title_switcher_stub.dart';

class GameFruitCutting extends StatefulWidget {
  const GameFruitCutting({super.key});

  @override
  State<GameFruitCutting> createState() => _GameFruitCuttingState();
}

class _GameFruitCuttingState extends State<GameFruitCutting> {

  @override
  void initState() {
    Flame.device.fullScreen();
    Flame.device.setLandscape();

    super.initState();
  }

  @override
  void dispose() {
    Flame.device.restoreFullscreen();
    Flame.device.setPortrait();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebTitleSwitcher(
      child: GameWidget(
        game: MainRouterGame(
          setScore: (int score) {
            print('=====================> fucking score : $score');
          }
        ),
      ),
    );
  }
}