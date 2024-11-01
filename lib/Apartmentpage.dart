import 'package:flutter/material.dart';

class ApartmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
        title: Text('Apartments'),
      ),
      body: ListView(
        children: [
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(
            imageUrl: 'https://assets-news.housing.com/news/wp-content/uploads/2022/04/07013406/ELEVATED-HOUSE-DESIGN-FEATURE-compressed.jpg',
            distance: "0.7 km",
            title: "Modern Valley",
            subtitle: "3,00,000 - 4,00,000",
          ),
          HouseCard(
            imageUrl: 'https://img.freepik.com/free-photo/photorealistic-house-with-wooden-architecture-timber-structure_23-2151302742.jpg',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(
            imageUrl: 'https://media.istockphoto.com/id/2155879397/photo/house-in-a-charming-neighborhood-with-stunning-sidewalk-landscaping.webp?a=1&b=1&s=612x612&w=0&k=20&c=LlqEpFyrJBmSZ8v3CshnYJo9X00p8Y7wGv3mIDNqpZ4=',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG91c2V8ZW58MHx8MHx8fDA%3D',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://media.istockphoto.com/id/1597660474/photo/birds-eye-view-of-home.webp?a=1&b=1&s=612x612&w=0&k=20&c=NymDFBDT63IYOEGkRlW_K7IwFFL9LdJFqo4G84vk_10=',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          // Repeat HouseCard instances as needed...
          HouseCard(
            imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          HouseCard(imageUrl: 'https://w7.pngwing.com/pngs/70/457/png-transparent-rosemary-beach-beach-house-cottage-renting-rental-homes-luxury-homes-beach-building-apartment-thumbnail.png',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
              distance: "5.5 km",
              title: "Nature Heart 3",
              subtitle: "4500000"
          ),
          HouseCard(
            imageUrl: 'https://images.surferseo.art/fdb08e2e-5d39-402c-ad0c-8a3293301d9e.png',
            distance: "0.8 km",
            title: "Shivjot Enclave",
            subtitle: "4,80,000",
          ),
          HouseCard(
            imageUrl: 'https://assets-news.housing.com/news/wp-content/uploads/2022/04/07013406/ELEVATED-HOUSE-DESIGN-FEATURE-compressed.jpg',
            distance: "0.7 km",
            title: "Modern Valley",
            subtitle: "3,00,000 - 4,00,000",
          ),
          HouseCard(
            imageUrl: 'https://w7.pngwing.com/pngs/184/25/png-transparent-saravanampatti-coimbatore-home-house-property-home-building-apartment-india-thumbnail.png',
            distance: "2.0 km",
            title: "Palm Meadows",
            subtitle: "3,60,000",
          ),
          // Add more HouseCard instances as needed...
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

  HouseCard({
    required this.imageUrl,
    required this.distance,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(
                imageUrl,
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 4),
                  Text(distance, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}