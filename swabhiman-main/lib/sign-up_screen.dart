import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  'assets/ne.png'), //add image location here //add image location here
            ),
            Text(
              'WELCOME',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.cyan[800],
              ),
            ),
            const Text(
              'Create a new account',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Color.fromARGB(255, 1, 22, 25),
              ),
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
                    hintText: 'Enter your GmailID/ Mobile no.',
                  ),
                ),
                leading: Icon(Icons.person),
                iconColor: Color.fromARGB(255, 81, 79, 79),
                onTap: () {},
              ),
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
                    hintText: 'Create Password',
                  ),
                ),
                leading: Icon(Icons.keyboard_alt_outlined),
                iconColor: Color.fromARGB(255, 81, 79, 79),
                onTap: () {},
              ),
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
                    hintText: 'Confirm Password',
                  ),
                ),
                leading: Icon(Icons.keyboard_alt_outlined),
                iconColor: Color.fromARGB(255, 81, 79, 79),
                onTap: () {},
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                child: Text(
                  "Sign Up",
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[800],
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            Text(
              'OR',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Color.fromARGB(255, 65, 180, 200),
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                child: Text(
                  "Sign Up With",
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[800],
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Wrap(
                runAlignment: WrapAlignment.center,
                spacing: 30, // space between two icons
                alignment: WrapAlignment.center,

                children: <Widget>[
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


//Firebase Signup Auth
// final _firestore = Firestore.instance;
// final _auth = FirebaseAuth.instance;
// bool showSpinar = false;
// String username;
// String email;
// String password;
// String pnone_number;
// int num;
//
// @override
// Widget build(BuildContext context) {
//   final pageColor = Colors.lightBlueAccent;
//   final nameField = TextField(
//     keyboardType: TextInputType.name,
//     onChanged: (value) {
//       username = value;
//     },
//     style: TextStyle(fontSize: 20.0),
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//       hintText: "Full Name",
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//     ),
//   );
//   final emailField = TextField(
//     keyboardType: TextInputType.emailAddress,
//     onChanged: (value) {
//       email = value;
//     },
//     style: TextStyle(fontSize: 20.0),
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//       hintText: "Email",
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//     ),
//   );
//   final contactNumber = TextField(
//     keyboardType: TextInputType.number,
//     onChanged: (value) {
//       pnone_number = value;
//     },
//     style: TextStyle(fontSize: 20.0),
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//       hintText: "Phone no.",
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(16.0),
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
//         borderRadius: BorderRadius.circular(16.0),
//       ),
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
//   final signUpButton = SizedBox(
//     height: 46,
//     width: 150,
//     child: RaisedButton(
//       onPressed: () async {
//         setState(() {
//           showSpinar = true;
//         });
//         try {
//           final newUser = await _auth.createUserWithEmailAndPassword(
//               email: email, password: password);
//           if (newUser != null) {
//             _firestore.collection('user').add({
//               'username': username,
//               'email': email,
//               'phone': pnone_number,
//             });
//             Navigator.pushNamed(context, HomeScreen.id);
//           }
//           setState(() {
//             showSpinar = false;
//           });
//         } catch (e) {
//           print(e);
//         }
//       },
//       color: Colors.lightBlueAccent,
//       child: Text(
//         'Sign Up',
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
//   final topBackIcon = SafeArea(
//     child: Align(
//       alignment: Alignment.topLeft,
//       child: RawMaterialButton(
//           child: Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//             size: 30.0,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, LoginScreenBody.id);
//           }),
//     ),
//   );
//
//   return Scaffold(
//     body: ModalProgressHUD(
//       inAsyncCall: showSpinar,
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
//                       topBackIcon,
//                       //this container have circleAvatar and text'login page in it
//                       Container(
//                         height: MediaQuery.of(context).size.height * 0.25,
//                         width: MediaQuery.of(context).size.width,
//                         child: Padding(
//                           padding: EdgeInsets.all(28.0),
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.stretch,
//                               children: <Widget>[
//                                 //this is where we put things to display at the top of the page
//                                 circleAvatar,
//                                 loginPageText,
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       //this widget has email,password,forgot password,login button,signUp text.
//                       Expanded(
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(56.0),
//                                 topRight: Radius.circular(56.0)),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.fromLTRB(
//                                 16.0, 10.0, 16.0, 10.0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: <Widget>[
//                                 SizedBox(height: 35.0),
//                                 nameField,
//                                 SizedBox(height: 30.0),
//                                 emailField,
//                                 SizedBox(height: 30.0),
//                                 contactNumber,
//                                 SizedBox(height: 30.0),
//                                 passwordField,
//                                 SizedBox(height: 35.0),
//                                 signUpButton,
//                                 Align(
//                                   alignment: Alignment.bottomCenter,
//                                   child: termsAndServices,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
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