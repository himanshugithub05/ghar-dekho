//Favourites

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Center(
        child: Text(
          'Your favorite properties will be shown here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}