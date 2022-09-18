import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        automaticallyImplyLeading: true,

        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where

        leading: IconButton(
          color: Color.fromARGB(255, 238, 233, 239),
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          // ignore: prefer_const_literals_to_create_immutables

          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(
                  Radius.circular(10.0)), //add border radius here
              child: Image.asset(
                'assets/right.png',
                height: 150,
                width: 150,
              ), //add image location here //add image location here
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 10,
              ),
              color: Color.fromARGB(109, 58, 220, 212),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Verification Code',
                  ),
                ),
                iconColor: Color.fromARGB(255, 81, 79, 79),
                onTap: () {},
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                child: Text(
                  "Verify",
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[800],
                  textStyle: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                child: const Text(
                  "Resend ",
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[800],
                  textStyle: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
