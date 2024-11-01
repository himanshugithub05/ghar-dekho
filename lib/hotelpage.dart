import 'package:flutter/material.dart';

class hotelpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Hotels"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          SizedBox(height: 10),
          HouseCard(
            imageUrl: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/98/5c/37/hotel-exterior.jpg?w=1200&h=-1&s=1',
            distance: "2.0 km",
            title: "Amayra Greens",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr_ipwGuR5qXU3_9sHz4xDrItG5ikf-Pm0YQ&s',
            distance: "2.0 km",
            title: "Sun View",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/20/b2/f1/exterior.jpg?w=700&h=-1&s=1',
              distance: "5.5 km",
              title: "The Aroma",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDOulglF-ONCv97_GBt6Alr50HMF4fr5WrDeb5kuYlt1aL9Lo7HVqPp5tZgHwHDyMTJP0&usqp=CAU',
              distance: "5.5 km",
              title: "Katani",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuNL6gXH5BGPDki-g4O1QAixFsGjqsE8VShg&s',
              distance: "5.5 km",
              title: "Taj",
              subtitle: "4500000"
          ),
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