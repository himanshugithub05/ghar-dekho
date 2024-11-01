import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomePageCamera extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

  Future<void> _openCamera(BuildContext context) async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      // Navigate to the DisplayCapturedImage screen with the image path
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DisplayCapturedImage(imagePath: photo.path),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No image captured.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          width: 150.0,
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.camera_alt, size: 50.0),
                onPressed: () => _openCamera(context), // Open camera directly
              ),
              SizedBox(height: 8.0),
              Text(
                'Camera',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayCapturedImage extends StatelessWidget {
  final String imagePath;

  DisplayCapturedImage({required this.imagePath}); // Correct constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Captured Image"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.file(
              File(imagePath), // Display the captured image
              fit: BoxFit.cover,
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your submission logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Image submitted: $imagePath')),
                );
              },
              child: Text('Submit Image'),
            ),
          ],
        ),
      ),
    );
  }
}