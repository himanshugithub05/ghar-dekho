import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  List<File?> _images = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    // Check if we already have 5 images
    if (_images.length >= 5) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You can only upload 5 images.')),
      );
      return;
    }

    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _images.add(File(pickedFile.path));
      });
    }
  }

  Future<void> _uploadImagesToFirebase() async {
    try {
      final storageRef = FirebaseStorage.instance.ref();
      for (var image in _images) {
        if (image != null) {
          final imageRef = storageRef.child('images/${DateTime.now().millisecondsSinceEpoch}.png');
          await imageRef.putFile(image);
          print('Image ${image.path} uploaded successfully');
        }
      }
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('All images uploaded successfully!')),
      );
    } catch (e) {
      print('Error uploading images: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker with Firebase'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _images.isEmpty
                ? const Text('No images selected.')
                : Column(
              children: _images.map((image) {
                return image != null
                    ? Image.file(image, height: 100)
                    : Container();
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: const Text('Pick an Image'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadImagesToFirebase,
              child: const Text('Upload Images'),
            ),
          ],
        ),
      ),
    );
  }
}
