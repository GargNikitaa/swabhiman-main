import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BankScreen extends StatefulWidget {
  const BankScreen({Key? key}) : super(key: key);

  @override
  _BankScreenState createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(45, 20, 30, 10),
            child: Container(
              height: 270,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bank.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Banking Assistance',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                height: 50,
                width: 250,
                child: Text(
                  'Manage Your Funds',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 3.0),
                    top: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                    items: [
                      Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.cyan[800],
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage('assets/online_banking.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.cyan[800],
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage('assets/debit-card.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
