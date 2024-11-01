import 'package:flutter/material.dart';
import 'package:ghardekhoo/property%20image.dart';

class Personaldetailproperty extends StatelessWidget {
  const Personaldetailproperty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puraan E-Books Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const PropertyDetails(),
    );
  }
}

class PropertyDetails extends StatefulWidget {
  const PropertyDetails({super.key});

  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  // Dropdown options
  String dropdownValue = 'Residential';
  String dropdownValue2 = 'Apartment';
  String dropdownValue3 = '1BHK';
  String dropdownValue4 = '0';
  String dropdownValue5 = 'Unfurnished';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo or Icon
              Icon(Icons.apartment, size: 60, color: Colors.orangeAccent),

              const SizedBox(height: 10),

              // Welcome Text
              const Text(
                'Property Details',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 50),

              // Customized Dropdown for Property Type
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " What kind of property?",
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // Attractive Dropdown
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonFormField<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.orange),
                      iconSize: 30,
                      elevation: 16,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.apartment, color: Colors.orange),
                      ),
                      style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Residential', 'Commercial', 'Industrial', 'Land']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.orange)),
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    " Select property type?",
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // Attractive Dropdown
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonFormField<String>(
                      value: dropdownValue2,
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.orange),
                      iconSize: 30,
                      elevation: 16,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.villa_outlined, color: Colors.orange),
                      ),
                      style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue2 = newValue!;
                        });
                      },
                      items: <String>['Apartment', 'Builder House', 'Farmhouse', 'Serviced Apartment', 'Villa', 'Others']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.orange)),
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    " Select type?",
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // Attractive Dropdown
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonFormField<String>(
                      value: dropdownValue3,
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.orange),
                      iconSize: 30,
                      elevation: 16,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.home_outlined, color: Colors.orange),
                      ),
                      style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue3 = newValue!;
                        });
                      },
                      items: <String>['1BHK', '2BHK', '3BHK', '4BHK', '5BHK', '1RK', 'Others']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.orange)),
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    " Balconies",
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // Attractive Dropdown
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonFormField<String>(
                      value: dropdownValue4,
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.orange),
                      iconSize: 30,
                      elevation: 16,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.balcony, color: Colors.orange),
                      ),
                      style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue4 = newValue!;
                        });
                      },
                      items: <String>['0', '1', '2', '3', 'More than 3']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.orange)),
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    " Furnished",
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // Attractive Dropdown
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonFormField<String>(
                      value: dropdownValue5,
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.orange),
                      iconSize: 30,
                      elevation: 16,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.account_tree, color: Colors.orange),
                      ),
                      style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue5 = newValue!;
                        });
                      },
                      items: <String>['Unfurnished', 'Semi-furnished', 'Furnished']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.orange)),
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 15),


                ],
              ),

              const SizedBox(height: 50),

              // Next Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImagePickerPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(120, 45),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
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
    );
  }
}



