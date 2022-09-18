import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:swabhiman/profile_screen.dart';
import 'package:swabhiman/bank.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFF00838F),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ProfileScreen(); // MakeTicketPage();
                  },
                ),
              );
            },
            iconSize: 40.0,
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFF00838F),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo[100],
                ),
                child: Image.asset('assets/profile.jpg'),
                //accountName: Text('USER NAME'),
                //accountEmail: Text('accountEmail'),
              ),
              const ListTile(
                title: Text(
                  'Categories',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                title: Text(
                  'My Bookmarks',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                title: Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          children: [
            GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange[50],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.account_balance,
                        size: 60,
                        color: Colors.black,
                      ),
                      Text(
                        'Banking Assistance',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BankScreen()),
                  );
                }),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF00838F),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'icons/law.png',
                  ),
                  const Text(
                    'Legal Assistance',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF00838F),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'icons/skill.png',
                  ),
                  const Text(
                    'Skill Development',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[50],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'icons/insurance.png',
                  ),
                  const Text(
                    'Insurance Guidance',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[50],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'icons/share_feelings.png',
                  ),
                  const Text(
                    'Share what you feel',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF00838F),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'icons/blogs.png',
                  ),
                  const Text(
                    'Blogs',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const GNav(
        backgroundColor: Color(0xFF00838F),
        gap: 8,
        activeColor: Colors.white,
        padding: EdgeInsets.all(16),
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.bookmark, text: 'Categories'),
          GButton(icon: Icons.account_circle, text: 'Profile'),
        ],
      ),
    );
  }
}
