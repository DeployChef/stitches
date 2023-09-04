import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

void main() {
  runApp(GameWidget(game: MyGame()));
}

class MyGame extends FlameGame {
  SpriteComponent needle = SpriteComponent();
  @override
  Future<void> onLoad() async {
    super.onLoad();
    print("we will load the game assets here");
    needle
      ..sprite = await loadSprite("needle.png")
      ..size = Vector2(300, 300)
      ..y = 100;
    add(needle);
  }
}
