import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:swabhiman/category_screen.dart';
import 'package:swabhiman/profile_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  int _current = 0;
  final urlImages = [
    'https://images.hindustantimes.com/img/2022/03/03/550x309/Sushmita_Sen_1646321196545_1646321210673.jpg',
    'https://images.hindustantimes.com/img/2022/03/03/550x309/Sushmita_Sen_1646321196545_1646321210673.jpg',
    'https://images.hindustantimes.com/img/2022/03/03/550x309/Sushmita_Sen_1646321196545_1646321210673.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget buildImage(String urlImages, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        color: Colors.grey,
        child: Image.network(
          urlImages,
          fit: BoxFit.cover,
        ),
      );

  //final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        //enlargeCenterPage: true,
                      ),
                      itemCount: urlImages.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = urlImages[index];

                        return buildImage(urlImage, index);
                      },
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: map<Widget>(urlImages, (index, url) {
                        return Container(
                          width: 10.0,
                          height: 10.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Colors.cyan[800]
                                : Colors.white,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Spread your wings, its time to fly, MAKE the leap, own the sky',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(height: 30, width: 150),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CategoryScreen();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[800],
                  textStyle: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                child: const Text(
                  "Let's Get Started",
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Our Pride',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Flexible(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Image.asset("assets/women1.jpg", fit: BoxFit.cover),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Image.asset("assets/women1.jpg", fit: BoxFit.cover),
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
          GButton(icon: Icons.account_circle, text: 'Profile',),
        ],
      ),
    );
  }
}
