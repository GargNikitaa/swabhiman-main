import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 115, 125),
          automaticallyImplyLeading: true,

          //`true` if you want Flutter to automatically add Back Button when needed,
          //or `false` if you want to force your own back button every where
          title: Text('Dashboard'),
          leading: IconButton(
            color: Color.fromARGB(255, 238, 233, 239),
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bk.jpeg"), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            mainAxisAlignment: MainAxisAlignment.center,

            // ignore: prefer_const_literals_to_create_immutables

            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/pro.png",
                    height: 200,
                    width: 150,
                  ),
                  Column(),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromARGB(194, 19, 118, 113),
                    child: Container(
                      height: 75,
                      width: 260,
                      margin: EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 40,
                      ),
                      child: Text(
                        'USER NAME\n xyz@gmail.com',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                          color: Color.fromARGB(255, 254, 253, 255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                color: Color.fromARGB(255, 246, 248, 249),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    'MY SKILLS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 1.0,
                  child: Image.asset(
                    'assets/skills.png',
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                color: Color.fromARGB(255, 246, 248, 249),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    'SCHEMES TAKEN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                color: Color.fromARGB(109, 58, 220, 212),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    '',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color.fromARGB(255, 254, 253, 255),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                height: 5,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                color: Color.fromARGB(109, 58, 220, 212),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    '',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color.fromARGB(255, 254, 253, 255),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                height: 5,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                color: Color.fromARGB(109, 58, 220, 212),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    '',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color.fromARGB(255, 254, 253, 255),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
