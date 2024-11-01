import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Personal detal propert.dart';
//import 'Personal detal property.dart';
// import 'personaldetailproperty.dart'; // Import the next page

class PropertyDetail extends StatelessWidget {
  const PropertyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puraan E-Books Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Contact(),
    );
  }
}

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _contactNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> _saveData() async {
    if (_formKey.currentState!.validate()) {
      // Save data to Firestore
      await FirebaseFirestore.instance.collection('users').add({
        'first_name': _firstNameController.text,
        'last_name': _lastNameController.text,
        'contact_number': _contactNumberController.text,
        'email': _emailController.text,
      });

      // Navigate to the next page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Personaldetailproperty()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.connect_without_contact, size: 60, color: Colors.orangeAccent),
                const SizedBox(height: 10),
                const Text(
                  'Contact Details',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Name Field
                    Text("First Name", style: TextStyle(fontSize: 16, color: Colors.orange, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _firstNameController,
                      style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    // Last Name Field
                    Text("Last Name", style: TextStyle(fontSize: 16, color: Colors.orange, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _lastNameController,
                      style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    // Contact Number Field
                    Text("Contact Number", style: TextStyle(fontSize: 16, color: Colors.orange, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _contactNumberController,
                      style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: '+9876543210',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your contact number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    // Email Address Field
                    Text("Email Address", style: TextStyle(fontSize: 16, color: Colors.orange, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _emailController,
                      style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: 'example@gmail.com',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(Icons.mail_outline),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                // Sign Up Button
                ElevatedButton(
                  onPressed: _saveData,
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
