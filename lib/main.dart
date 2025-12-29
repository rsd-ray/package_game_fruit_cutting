/*
 * @ Author: Flutter Journey 🎯 <flutterjourney.org@gmail.com>
 * @ Created: 2024-12-09 13:15:47
 * @ Message: You look very hardworking 👨‍💻. Keep focusing on your goals. 🌤️
 */

import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart' hide Game;
// import 'package:fruit_cutting_game/main_router_game.dart';
import 'main_router_game.dart';
import 'web_title_switcher_stub.dart' if (dart.library.html) 'web_title_switcher_web.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Flame.device.fullScreen();
  Flame.device.setLandscape();

  runApp(
    WebTitleSwitcher(
      child: GameWidget(
        game: MainRouterGame(
          setScore: (int score) {
            print('=====================> fucking score : $score');
          }
        ),
      ),
    ),
  );
}
