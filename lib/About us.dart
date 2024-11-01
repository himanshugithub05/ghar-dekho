import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Company Logo or Banner
            Center(
              child: Image.asset(
                'assets/images/Ghar.png', // Ensure this image has no background
                width: 100,
                height: 100,
                fit: BoxFit.contain, // Ensures the image fits properly
              ),
            ),
            SizedBox(height: 20),

            // About Us Description
            Text(
              'Welcome to Our Company!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'We are a leading company in our industry, committed to providing top-notch services and products to our customers. Our team of professionals works tirelessly to ensure that we meet and exceed expectations. We believe in innovation, quality, and customer satisfaction.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Contact Information
            Text(
              'Contact Us:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: contact@company.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone: +918979175980'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address: 123 Business St, City, India'),
            ),
          ],
        ),
      ),
    );
  }
}
