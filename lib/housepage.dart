import 'package:flutter/material.dart';

class HousePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
        title: Text("House Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          SizedBox(height: 10),
          HouseCard(
            imageUrl: 'https://media.istockphoto.com/id/1778738751/photo/summer-is-over-in-the-garden.webp?a=1&b=1&s=612x612&w=0&k=20&c=LA-_tdnD-yYnysxQi8SNINsTdvrp65Kc1t-AAZd8Cmo=',
            distance: "2.0 km",
            title: "Amayra Greens",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://media.istockphoto.com/id/2150594663/photo/exterior-of-a-white-house-home.webp?a=1&b=1&s=612x612&w=0&k=20&c=9DBcQK0jh8bvSDZWKnqXlPk1-zTSnjKVwTIK-M0jYnY=',
              distance: "5.5 km",
              title: "Nature Heart",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Hut",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-rendering-house-model_23-2150799641.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "New Nature Hut",
              subtitle: "4500000"
          ),
          
          SizedBox(height: 20),
          Text("Welcome to the House Page!", textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class HouseCard extends StatelessWidget {
  final String imageUrl;
  final String distance;
  final String title;
  final String subtitle;

  const HouseCard({
    Key? key,
    required this.imageUrl,
    required this.distance,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 250,
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity, // Fill the width
              height: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0), // Reduced padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Reduced font size
                  ),
                  SizedBox(height: 4), // Add space between texts
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14), // Adjusted font size
                  ),
                  Text(
                    distance,
                    style: TextStyle(fontSize: 14), // Adjusted font size
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
