import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/test.dart';
import 'package:unit_testing/models/favorites.dart';
import 'package:unit_testing/screens/favorites.dart';


late Favorites favoritesList;

Widget createFavoritesScreen() => ChangeNotifierProvider<Favorites>(
  create: (context) {
    favoritesList = Favorites();
    return favoritesList;
  },
  child: MaterialApp(
    home: FavoritesPage(),
  ),
);

void addItems() {
  for (var i = 0; i < 10; i += 2) {
    favoritesList.add(i);
  }
}


void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();
    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });
  });
}