import 'mock_heros.dart';
import 'dart:async';
import 'hero.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;

  /* Mimics a slow connection */
  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }
}
