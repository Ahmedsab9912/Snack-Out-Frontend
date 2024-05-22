// import 'dart:convert';
// import 'package:canonproject/Dashboard_Pages/User_Management/shared_preferences_page.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../Models/ResponseModel.dart';
// import '../Dashboard/home_page.dart';
// import 'package:http/http.dart' as http;

// import '../My_Funtions.dart';
// import '../Screens/SalesMan/SalesManDashboard.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController user_id = TextEditingController();
//   TextEditingController user_pass = TextEditingController();
//   FocusNode foucusEmail = FocusNode();
//   FocusNode focusPassword = FocusNode();

//   @override
//   void initState() {
//     getUserData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 10),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     //Top Image

//                     SizedBox(
//                       height: 30,
//                     ),
//                     //Image Text
//                     SizedBox(width: 12),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Image(
//                             height: 250,
//                             width: 250,
//                             image: AssetImage('images/canonlogo.png')),
//                         // Text(
//                         //   'Crystal',
//                         //   style: TextStyle(
//                         //     fontSize: 50.0,
//                         //     color: Colors.indigo[900],
//                         //     fontFamily: ('Rubik Medium'),
//                         //   ),
//                         // ),
//                         // Text(
//                         //   'Applicaton',
//                         //   style: TextStyle(
//                         //     fontSize: 28.0,
//                         //     color: Colors.orange[600],
//                         //     fontFamily: ('Rubik Medium'),
//                         //   ),
//                         // ),
//                       ],
//                     )
//                   ],
//                 ),
//                 //Lower Logo Part
//                 SizedBox(height: 14),
//                 Center(
//                     child: Text(
//                   " Welcome \n Please enter you ID & Password",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     fontFamily: (' Rubik Regular'),
//                   ),
//                 )),
//                 //container Start
//                 SizedBox(
//                   height: 55,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 0, right: 0),
//                   child: TextFormField(
//                     controller: user_id,
//                     focusNode: foucusEmail,
//                     onFieldSubmitted: (_) {
//                       FocusScope.of(context).requestFocus(focusPassword);
//                     },
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                         hintText: 'User Id',
//                         fillColor: Colors.grey[200],
//                         filled: true,
//                         prefixIcon: Icon(
//                           Icons.account_circle,
//                           color: Colors.black54,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                           color: Colors.white12,
//                         ))),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   controller: user_pass,
//                   focusNode: focusPassword,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       hintText: 'Password',
//                       fillColor: Colors.grey[200],
//                       filled: true,
//                       prefixIcon: Icon(
//                         Icons.lock,
//                         color: Colors.black54,
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                         color: Colors.white12,
//                       ))),
//                 ),
//                 SizedBox(height: 50),
//                 //Login Box Start
//                 InkWell(
//                   onTap: () {
//                     loginFun();
//                   },
//                   child: Container(
//                     height: 50,
//                     width: 280,
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black54,
//                           offset: Offset(
//                             2.0,
//                             6.0,
//                           ),
//                           blurRadius: 10.0,
//                           spreadRadius: 2.0,
//                         ), //BoxShadow
//                         BoxShadow(
//                           color: Colors.white,
//                           offset: Offset(0.0, 0.0),
//                           blurRadius: 0.0,
//                           spreadRadius: 0.0,
//                         ), //BoxShadow
//                       ],
//                       color: Colors.blue[900],
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Log In',
//                         style: TextStyle(
//                           fontSize: 24.0,
//                           color: Colors.white,
//                           fontFamily: ('Rubik Medium'),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 //Login Box End
//                 // Lower Text Of Login Start
//                 // SizedBox(
//                 //   height: 20,
//                 // ),
//                 // Row(
//                 //   mainAxisAlignment: MainAxisAlignment.center,
//                 //   children: [
//                 //     Text(
//                 //       "Don't have an account?",
//                 //       style:
//                 //           TextStyle(fontSize: 16, fontFamily: 'Rubik Regular'),
//                 //     ),
//                 //     SizedBox(
//                 //       width: 6,
//                 //     ),
//                 //     Center(
//                 //       child: Text(
//                 //         "Sign Up",
//                 //         style: TextStyle(
//                 //             fontSize: 16,
//                 //             color: Colors.blue[900],
//                 //             fontFamily: 'Rubik Regular'),
//                 //       ),
//                 //     )
//                 //   ],
//                 // )
//               ],
//               // Lower Text Of Login Start
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   loginFun() async {
//     var abc = Uri.parse('https://www.crystalsolutions.com.pk/canon/login.php');

//     var response = await http.post(abc, body: {
//       'userid': user_id.text,
//       'password': user_pass.text,
//     });

//     var data = jsonDecode(response.body);

//     ResponseModel responseModel = ResponseModel.fromJson(data);
//     // print(data);

//     if (responseModel.error == 200 && responseModel.user!.tusrtyp == "Office") {
//       await shared_preferences.savedata(responseModel.user!, 'Office');
//       My_Funtions.f_toast(context, 'Admin Login Successfully', Colors.green);
//       Navigator.pushReplacement(context,
//           MaterialPageRoute(builder: (BuildContext context) {
//         return HomePage();
//       }));
//     }  else if(responseModel.error == 200 && responseModel.user?.tusrtyp == 'Sales Man') {
//       await shared_preferences.savedata(responseModel.user!, 'Sales Man');
//       My_Funtions.f_toast(context, 'SalesMan Login Successfully', Colors.green);
//       Navigator.pushReplacement(context,
//           MaterialPageRoute(builder: (BuildContext context) {
//             return SalesManDasScr();
//           }));
//     } else {
//       My_Funtions.f_toast(context, '${'Wrong Id or Password'}', Colors.red);
//     }
//   }

//   // SHARED PREFENCES GETTING THE USER TYPE
//   getUserData() async {
//     SharedPreferences sharedPrefences = await SharedPreferences.getInstance();
//     var login = sharedPrefences.getString('loged');
//     if (login == 'Office') {
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
//         return HomePage();
//       }));
//     } else {
//       return;
//     }
//   }
// }