import 'package:flutter/material.dart';
import 'detailsscreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> drinks = [
    {
      'name': 'Bloody Mary',
      'ingredients': 'Vodka, Tomato Juice, Lemon Juice, Worcestershire Sauce, Hot Sauce, Celery Salt, Pepper, Celery Stick',
      'instructions': 'Combine all ingredients in a shaker with ice. Shake gently and strain into a glass. Garnish with a celery stick.',
      'image': 'assets/a1_bloodymary.jpg',
    },
    {
      'name': 'Mai Tai',
      'ingredients': 'Light Rum, Dark Rum, Lime Juice, Orange Liqueur, Orgeat Syrup, Mint Leaves',
      'instructions': 'Shake light rum, lime juice, orange liqueur, and orgeat syrup with ice. Strain into a glass over ice, and float dark rum on top. Garnish with mint leaves.',
      'image': 'assets/a2_maitai.jpg',
    },
    {
      'name': 'Blue Lagoon',
      'ingredients': 'Vodka, Blue Curacao, Lemonade, Lemon Slice',
      'instructions': 'Mix vodka and blue curacao in a glass filled with ice. Top with lemonade and stir gently. Garnish with a lemon slice.',
      'image': 'assets/a3_bluelagoon.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drink Recipes'),
      ),
      body: ListView.builder(
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(drinks[index]['name']!),
            leading: Image.asset(drinks[index]['image']!, width: 50, height: 50, fit: BoxFit.cover),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    drink: drinks[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
