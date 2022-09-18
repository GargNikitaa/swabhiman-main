import 'package:flutter/material.dart';
import 'package:swabhiman/otp.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        automaticallyImplyLeading: true,
        leading: IconButton(
          color: const Color.fromARGB(255, 238, 233, 239),
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(
                  Radius.circular(10.0)), //add border radius here
              child: Image.asset(
                'assets/im.png',
                height: 280,
                width: 400,
              ), //add image location here //add image location here
            ),
            Text(
              'Forgot Password?',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.cyan[800],
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 10,
              ),
              color: const Color.fromARGB(109, 58, 220, 212),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter UserID/Gmail/Mobile No.',
                  ),
                ),
                leading: const Icon(Icons.person),
                iconColor: const Color.fromARGB(255, 81, 79, 79),
                onTap: () {},
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const OTPScreen(); // MakeTicketPage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[800],
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text(
                  "NEXT",
                ),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
