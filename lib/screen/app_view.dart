import 'package:flutter/material.dart';
import 'package:flutter_navigator/screen/about.dart';
import 'package:flutter_navigator/screen/contact.dart';
import 'package:flutter_navigator/screen/home_page.dart';
import 'package:flutter_navigator/screen/profile.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //
        title: Text("Flutter Navigation"),
        centerTitle: true,
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
      body: Center(
        child: Text("Navigation"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: () {
          print("Text");
        },
        child: Icon(Icons.home),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.deepPurple,
        // Navbar
        child: ListView(
          children: [
            DrawerHeader(
              // HEADER
              // child: Center(
              //   child: Text(
              //     "Header",
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 20),
              //   ),
              // ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    // fit: BoxFit.fill,
                    image: AssetImage("images/cat2.png"),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text(
                          "FUBUKI",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ); // link href
              },
              leading: Icon(
                Icons.home,
                color: Colors.purple,
              ),
              title: Text("Home", style: TextStyle(color: Colors.purpleAccent)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                ); // link href
              },
              leading: Icon(
                Icons.account_circle,
                color: Colors.purple,
              ),
              title: Text("About"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                ); // link href
              },
              leading: Icon(
                Icons.label,
                color: Colors.purple,
              ),
              title: Text("Profile"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                ); // link href
              },
              leading: Icon(
                Icons.label,
                color: Colors.purple,
              ),
              title: Text("Contact"),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.purple,
              ),
              title: Text("Exit Program"),
            ),
          ],
        ),
      ),
    );
  }
}