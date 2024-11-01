import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghardekhoo/About%20us.dart';
import 'package:ghardekhoo/Login_page.dart';
import 'package:ghardekhoo/Property%20Detail.dart';
import 'package:ghardekhoo/auth_controller.dart';
import 'package:ghardekhoo/homepage%20camera.dart';
// import 'package:ghardekhoo/pd.dart';
// import 'package:ghardekhoo/pdp_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Apartmentpage.dart';
import 'Chat Assistance.dart';
import 'Favouritespage.dart';
import 'Messagepage.dart';
import 'MyProfile.dart';
import 'Setting.dart';
import 'housepage.dart';
import 'hotelpage.dart';
import 'villapage.dart';
import 'Login_page.dart';
import 'package:flutter/cupertino.dart';
//import 'camera_page.dart';

class GoogleMapApiMap extends StatefulWidget {
  const GoogleMapApiMap({super.key});

  @override
  _GoogleMapState createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GoogleMapApiMap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: HomePages(), // Set this to HomePages() instead of GoogleMapApiMap()
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ghar Dekho',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePages(),
    );
  }
}


class HomePages extends StatelessWidget {

  var controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ghar Dekho",
          style: TextStyle(
            fontSize: 26, // Font size
            fontWeight: FontWeight.bold, // Font weight
            fontFamily: 'Arial', // Font family (optional)
            color: Colors.deepOrangeAccent, // Font color
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You have no new notifications.'),
                  duration: Duration(seconds: 3),
                  action: SnackBarAction(
                    label: 'Dismiss',
                    onPressed: () {
                      // Some code to undo the change, if needed.
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Location and Search bar
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Kharar, Mohali",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.search, size: 30, color: Colors.black),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search by filters",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: IconButton(
                  icon: Icon(Icons.tune, color: Colors.orange),
                  onPressed: () {
                    _showFilterDialog(context);
                  },
                ), // Filter icon
              ),
            ),

            SizedBox(height: 16),

            // Category buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(
                    label: "All",
                    isSelected: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HousePage()),
                      );
                    },
                  ),
                  CategoryButton(
                    label: "House",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HousePage()),
                      );
                    },
                  ),
                  CategoryButton(
                    label: "Apartment",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ApartmentPage()),
                      );
                    },
                  ),
                  CategoryButton(
                    label: "Hotel",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hotelpage()),
                      );
                    },
                  ),
                  // CategoryButton(
                  //   label: "Villa",
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => villapage()),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Near from you
            SectionHeader(title: "Near from you", onSeeMore: () {}),
            SizedBox(height: 16),

            // House Cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Container(
                  //   width: 150.0,
                  //   height: 100.0,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       IconButton(
                  //         icon: Icon(Icons.camera_alt, size: 50.0),
                  //         onPressed: () {
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(builder: (context) => HomePageCamera()),
                  //           );
                  //         },
                  //       ),
                  //       SizedBox(height: 8.0),
                  //       Text(
                  //         'Camera',
                  //         style: TextStyle(
                  //           fontSize: 16.0,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),


                  HouseCard(
                    imageUrl:
                    'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
                    distance: "2.0 km",
                    title: "Palm Meadows",
                    subtitle: "3,60,000",
                  ),
                  HouseCard(
                    imageUrl:
                    'https://images.surferseo.art/fdb08e2e-5d39-402c-ad0c-8a3293301d9e.png',
                    distance: "0.8 km",
                    title: "Shivjot Enclave",
                    subtitle: "4,80,000",
                  ),
                  HouseCard(
                    imageUrl:
                    'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
                    distance: "2.0 km",
                    title: "Palm Meadows",
                    subtitle: "3,60,000",
                  ),
                  HouseCard(
                    imageUrl:
                    'https://assets-news.housing.com/news/wp-content/uploads/2022/04/07013406/ELEVATED-HOUSE-DESIGN-FEATURE-compressed.jpg',
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
                  HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-rendering-house-model_23-2150799641.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
                      distance: "5.5 km",
                      title: "Nature Heart 3",
                      subtitle: "4500000"
                  ),
                  HouseCard(
                    imageUrl:
                    'https://cdn.homedit.com/wp-content/uploads/house-styles/Cape-Cod-Architecture-House-Style.jpg',
                    distance: "0.5 km",
                    title: "Nature Huts",
                    subtitle: "4,60,000",
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Best for you
            SectionHeader(title: "Best for you", onSeeMore: () {}),
            SizedBox(height: 4),

            // House List
            Expanded(
              child: ListView(
                children: [
                  HouseListItem(
                    imageUrl: 'https://venues-realestate.com/wp-content/uploads/2023/08/resde-1.jpg',
                    price: "Rs. 5,50,000.00 / Year",
                    title: "Amayra Groups",
                    rooms: "4 Bedroom",
                    bathrooms: "3 Bathroom",
                  ),
                  SizedBox(height: 10),
                  HouseCard(
                    imageUrl: 'https://media.istockphoto.com/id/2155901088/photo/exterior-view-of-a-contemporary-new-home-in-los-angeles.webp?a=1&b=1&s=612x612&w=0&k=20&c=I6z_rgfEJ-JaKVXis3RV152-iHrO3l_Uc4J5jVY1mN4=',
                    distance: "2.0 km",
                    title: "Aber Palm Meadows",
                    subtitle: "3,60,000",
                  ),
                  // Repeat HouseCard instances as needed...
                  HouseCard(
                    imageUrl: 'https://cms.interiorcompany.com/wp-content/uploads/2023/11/simple-house-design-go-for-minimalist.png',
                    distance: "2.0 km",
                    title: "Palm Meadows",
                    subtitle: "3,60,000",
                  ),
                  HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-rendering-house-model_23-2150799641.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
                      distance: "5.5 km",
                      title: "Nature Heart 2",
                      subtitle: "4500000"
                  ),
                  HouseCard(imageUrl: 'https://img.freepik.com/free-photo/3d-electric-car-building_23-2148972401.jpg?ga=GA1.1.1867255755.1729694916&semt=ais_hybrid',
                      distance: "5.5 km",
                      title: "Nature Heart 3",
                      subtitle: "4500000"
                  ),
                  HouseCard(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIEWNaSTuiZDHvheIbQrqH2y3Vyl8V_cbE1A&s',
                      distance: "5.5 km",
                      title: "New Nature Heart",
                      subtitle: "4500000"
                  ),
                  HouseListItem(
                    imageUrl: 'https://amazingarchitecture.com/storage/1196/courbes-residential-building-christophe-rousselle-architecte-france.jpg',
                    price: "Rs. 6,00,000.00 / Year",
                    title: "Ubber Mews",
                    rooms: "5 Bedroom",
                    bathrooms: "4 Bathroom",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 66,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.orangeAccent], // The colors in the gradient
                    begin: Alignment.topLeft, // Starting point of the gradient
                    end: Alignment.bottomRight, // Ending point of the gradient
                  ),
                ),
                child: Text(
                  'Ghar Dekho',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('My Profile'),
              onTap: () {
                // Handle navigation
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfileCard())
                ); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle navigation
                Navigator.of(context).pop(); // Close the drawer
              },
            ),
            Divider(
              color: Colors.grey, // Color of the line
              thickness: 0.6, // Thickness of the line
              indent: 16.0, // Left indent of the line
              endIndent: 16.0, // Right indent of the line
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FavoritesPage()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.message_outlined),
              title: Text('Messages'),
              onTap: () {
                // Handle navigation
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Message()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.upcoming),
              title: Text('Add property'),
              onTap: () {
                // Handle navigation
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PropertyDetail()),
                );
              },
            ),
            Divider(
              color: Colors.grey, // Color of the line
              thickness: 0.8, // Thickness of the line
              indent: 16.0, // Left indent of the line
              endIndent: 16.0, // Right indent of the line
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pop(); // Close the drawer
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.support_agent),
              title: Text('Help & Support'),
              onTap: () {
                // Handle navigation
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ChatPage())
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text('About us'),
              onTap: () {
                // Handle navigation
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );

              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () async{
                // Handle logout
                try{
                  await controller.logoutMethod(context: context);
                  VxToast.show(context, msg: "Successfully logged out");
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }catch (e){
                  VxToast.show(context, msg: e.toString());
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Filter Search'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Price Range:'),
              // Replace this with a price range picker widget
              RangeSlider(
                values: RangeValues(100000, 500000),
                min: 1000,
                max: 1000000,
                divisions: 20,
                labels: RangeLabels('100000k', '500000k'),
                onChanged: (RangeValues values) {},
              ),
              SizedBox(height: 16),
              Text('Number of Rooms:'),
              // Replace this with a number picker widget
              DropdownButton<int>(
                value: 3,
                items: List.generate(4, (index) => index + 1)
                    .map((e) => DropdownMenuItem<int>(
                  value: e,
                  child: Text('$e Room${e > 1 ? 's' : ''}'),
                ))
                    .toList(),
                onChanged: (int? value) {},
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Apply'),
              onPressed: () {
                // Apply the filters
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}


class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onPressed;
  final Color? color;

  CategoryButton({
    required this.label,
    this.isSelected = false,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected ? Colors.orange : Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeMore;

  SectionHeader({required this.title, required this.onSeeMore});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextButton(onPressed: onSeeMore, child: Text("See more")),
      ],
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
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  distance,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(subtitle, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

class HouseListItem extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String title;
  final String rooms;
  final String bathrooms;

  HouseListItem({
    required this.imageUrl,
    required this.price,
    required this.title,
    required this.rooms,
    required this.bathrooms,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(price,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent)),
                Text(title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(rooms, style: TextStyle(color: Colors.grey)),
                Text(bathrooms, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}