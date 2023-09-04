import 'package:flutter/material.dart';
import 'package:flame/game.dart';

void main() {
  runApp(GameWidget(game: MyGame()));
}

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    print("we will load the game assets here");
  }
}
