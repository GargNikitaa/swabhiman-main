import 'package:flutter/material.dart';
import 'package:swabhiman/forgot_password.dart';
import 'package:swabhiman/home_screen.dart';
import 'package:swabhiman/sign-up_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        automaticallyImplyLeading: true,

        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        title: const Text('Swabhimaan'),
        leading: IconButton(
          color: const Color.fromARGB(255, 238, 233, 239),
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/back.png"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          // ignore: prefer_const_literals_to_create_immutables

          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(
                  Radius.circular(10.0)), //add border radius here
              child: Image.asset(
                  'assets/we.png'), //add image location here //add image location here
            ),
            Text(
              'WELCOME BACK!',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.cyan[800],
              ),
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
                    hintText: 'Enter User ID',
                  ),
                ),
                leading: const Icon(Icons.person),
                iconColor: const Color.fromARGB(255, 81, 79, 79),
                onTap: () {},
              ),
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
                    hintText: 'Enter Password',
                  ),
                ),
                leading: const Icon(Icons.keyboard_alt_outlined),
                iconColor: const Color.fromARGB(255, 81, 79, 79),
                onTap: () {},
              ),
            ),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen(); // MakeTicketPage();
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
                  "Login",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpScreen(); // MakeTicketPage();
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
                  "Signup",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints:
              const BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ForgotPasswordScreen(); // MakeTicketPage();
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
                  "Forgot Password",
                ),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 10,
            ),
            const Text(
              'OR',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Color.fromARGB(255, 65, 180, 200),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 10,
            ),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[800],
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text(
                  "Login With",
                ),
              ),
            ),
            ListTile(
              title: Wrap(
                runAlignment: WrapAlignment.center,
                spacing: 30, // space between two icons
                alignment: WrapAlignment.center,

                children: const <Widget>[
                  Icon(Icons.call,
                      color: Color.fromARGB(255, 23, 156, 205), size: 50.0),

                  // icon-1
                  Icon(Icons.mail,
                      color: Color.fromARGB(255, 24, 181, 212), size: 50.0),

                  Icon(Icons.facebook,
                      color: Color.fromARGB(255, 8, 23, 120), size: 50.0),
                  Icon(Icons.apple,
                      color: Color.fromARGB(255, 71, 71, 72),
                      size: 50.0) // icon-2
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Firebase Login Auth

// final _auth = FirebaseAuth.instance;
// final _firestore = Firestore.instance;
// bool showSpinner = false;
// String email;
// String password;
//
// @override
// Widget build(BuildContext context) {
//   final height = MediaQuery.of(context).size.height;
//   final width = MediaQuery.of(context).size.width;
//   final pageColor = Colors.lightBlueAccent;
//   final emailField = TextField(
//     keyboardType: TextInputType.emailAddress,
//     onChanged: (value) {
//       email = value;
//     },
//     style: TextStyle(fontSize: 20.0),
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.fromLTRB(width * 0.1, 15.0, 20.0, 15.0),
//       hintText: "Email",
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(34.0),
//       ),
//     ),
//   );
//   final passwordField = TextField(
//     obscureText: true,
//     onChanged: (value) {
//       password = value;
//     },
//     style: TextStyle(fontSize: 20.0),
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//       hintText: "Password",
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(34.0),
//       ),
//     ),
//   );
//   final forgotPassword = Container(
//       child: Row(
//         children: [
//           FlatButton(
//             onPressed: () {},
//             child: Text(
//               'Forgot Password',
//               style: TextStyle(color: Colors.blueAccent),
//               textAlign: TextAlign.justify,
//             ),
//           ),
//         ],
//       ));
//   final loginButton = SizedBox(
//     height: 46,
//     width: 150,
//     child: RaisedButton(
//       onPressed: () async {
//         setState(() {
//           showSpinner = true;
//         });
//         try {
//           final user = await _auth.signInWithEmailAndPassword(
//               email: email, password: password);
//           if (user != null) {
//             Navigator.pushNamed(context, HomeScreen.id);
//           }
//
//           setState(() {
//             showSpinner = false;
//           });
//         } catch (e) {
//           print(e);
//         }
//       },
//       color: Colors.lightBlueAccent,
//       child: Text(
//         'Login',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//           fontSize: 18,
//           // fontStyle: FontStyle.italic,
//         ),
//         textAlign: TextAlign.center,
//       ),
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(38.0),
//           side: BorderSide(color: Colors.black)),
//     ),
//   );
//   final circleAvatar = CircleAvatar(
//     radius: 40,
//     backgroundColor: pageColor.shade100,
//     child: Icon(
//       Icons.person,
//       size: 48,
//       color: pageColor,
//     ),
//   );
//   final loginPageText = Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Text(
//       "Login Page",
//       style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//           fontSize: 18,
//           fontStyle: FontStyle.italic),
//       textAlign: TextAlign.center,
//     ),
//   );
//   final signUpText = GestureDetector(
//     onTap: () {
//       Navigator.pushNamed(context, SignUpScreen.id);
//     },
//     child: Text.rich(
//       TextSpan(text: 'Don\'t have an account? ', children: [
//         TextSpan(
//           text: 'Sign up',
//           style: TextStyle(color: Colors.white),
//         ),
//       ]),
//     ),
//   );
//   final termsAndServices = GestureDetector(
//     onTap: () {},
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Text.rich(
//         TextSpan(
//           text: 'Terms & services',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//   );
//
//   return Scaffold(
//     body: ModalProgressHUD(
//       inAsyncCall: showSpinner,
//       child: Container(
//         child: LayoutBuilder(builder:
//             (BuildContext context, BoxConstraints viewportConstraints) {
//           return SingleChildScrollView(
//             child: ConstrainedBox(
//               constraints: BoxConstraints(
//                 minHeight: viewportConstraints.maxHeight,
//               ),
//               child: Container(
//                 color: Colors.lightBlueAccent,
//                 child: IntrinsicHeight(
//                   child: Column(
//                     children: <Widget>[
//                       //this container have circleAvatar and text'login page in it
//                       Expanded(
//                         child: Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(56.0),
//                                   topRight: Radius.circular(56.0)),
//                               gradient: LinearGradient(
//                                   begin: Alignment.topRight,
//                                   end: Alignment.bottomLeft,
//                                   colors: [
//                                     Color(0xFF2196F3),
//                                     Color(0x16fff5)
//                                   ])),
//                           child: Padding(
//                             padding: const EdgeInsets.all(16.0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: <Widget>[
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 80.0),
//                                   child: Column(
//                                     children: [
//                                       circleAvatar,
//                                       loginPageText,
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(height: 48.0),
//                                 Container(
//                                   // width: 360,
//                                   child: emailField,
//                                 ),
//                                 SizedBox(height: 26.0),
//                                 passwordField,
//                                 forgotPassword,
//                                 SizedBox(height: 42.0),
//                                 loginButton,
//                                 SizedBox(height: 18.0),
//                                 signUpText,
//                                 // Align(
//                                 //   alignment: Alignment.bottomCenter,
//                                 //   child: termsAndServices,
//                                 // ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       //this widget has email,password,forgot password,login button,signup text.
//
//                       termsAndServices,
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }),
//       ),
//     ),
//   );
// }
// }