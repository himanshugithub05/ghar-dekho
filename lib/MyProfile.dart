import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

class ProfileCard extends StatefulWidget {
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  File? _imageFile; // To store the selected image file
  final picker = ImagePicker();

  // Function to pick image
  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

  // Function to upload image to Firebase Storage
  Future<String> _uploadImage(File imageFile) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    String fileName = 'profile_$userId.jpg';

    // Get a reference to Firebase Storage
    Reference storageReference =
    FirebaseStorage.instance.ref().child('profile_images/$fileName');

    // Upload the file to Firebase Storage
    UploadTask uploadTask = storageReference.putFile(imageFile);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);

    // Get the download URL
    String downloadUrl = await taskSnapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  // Function to save the download URL to Firestore
  Future<void> _saveImageUrlToFirestore(String imageUrl) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;

    await FirebaseFirestore.instance.collection('users').doc(userId).update({
      'photoUrl': imageUrl, // Update or set the photo URL field
    });
  }

  // Function to handle image upload and Firestore update
  Future<void> _uploadAndSaveImage() async {
    if (_imageFile != null) {
      try {
        // Upload image to Firebase Storage
        String imageUrl = await _uploadImage(_imageFile!);

        // Save the download URL to Firestore
        await _saveImageUrlToFirestore(imageUrl);

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Profile image updated successfully!')),
        );
      } catch (e) {
        // Handle errors
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error uploading image: $e')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No image selected!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    String userId = FirebaseAuth.instance.currentUser!.uid;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Card'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.collection('users').doc(userId).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error loading profile.'));
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('Profile not found.'));
          }

          var userData = snapshot.data!.data() as Map<String, dynamic>;

          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  color: Colors.deepOrangeAccent,
                  child: Center(
                    child: GestureDetector(
                      onTap: _pickImage, // Pick image on tap
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: _imageFile != null
                            ? FileImage(_imageFile!) // Display the picked image
                            : NetworkImage(userData['photoUrl'] ?? 'https://example.com/default.jpg') as ImageProvider,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '${userData['first_name']} ${userData['last_name']}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ghar Dekho',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    userData['bio'] ??
                        'A lot of things you see as a child remain with you...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ),
                // Upload Button
                ElevatedButton(
                  onPressed: _uploadAndSaveImage,
                  child: Text('Upload Image'),
                ),
                Divider(thickness: 1),
                ListTile(
                  leading: Icon(Icons.language, color: Colors.deepOrange),
                  title: Text(userData['website'] ?? 'example.com'),
                ),
                ListTile(
                  leading: Icon(Icons.email, color: Colors.deepOrange),
                  title: Text(userData['email'] ?? 'example@example.com'),
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: Colors.deepOrange),
                  title: Text(userData['mobile'] ?? '+38 (064) 242 85 13'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

