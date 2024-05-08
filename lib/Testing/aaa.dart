// // import 'dart:convert';
// // import 'dart:io';
// // import 'package:device_info_plus/device_info_plus.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:usama_electronics/Login%20Ui/shared_preferences_page.dart';
// // import 'package:usama_electronics/Models/LoginModel.dart';
// // import '../Admin/AllAPIs/API.dart';
// // import '../MyFuntions/Funtions.dart';
// // import '../Admin/Dashboard/AdminDashboard.dart';
// // import '../Salesman/DashboardSM/SalesManDashboard.dart';
// //
// // class LoginScreen extends StatefulWidget {
// //   const LoginScreen({super.key});
// //
// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }
// //
// // class _LoginScreenState extends State<LoginScreen> {
// //   TextEditingController user_id = TextEditingController();
// //   TextEditingController user_pass = TextEditingController();
// //   FocusNode foucusEmail = FocusNode();
// //   FocusNode focusPassword = FocusNode();
// //   var uniqueId;
// //   bool _obscurePassword = true; // Add this line to declare the variable
// //   //ADDING FORM KEY VARIABLE
// //   final _formKey = GlobalKey<FormState>();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return  SafeArea(
// //       child: Scaffold(
// //         backgroundColor: Colors.white,
// //         body: SingleChildScrollView(
// //           child: Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 15,vertical: 60),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Center(
// //                   child: Image(
// //                     // height: 250,
// //                       width: 280,
// //                       image: AssetImage('images/UsamaLogo.png')),
// //                 ),
// //                 SizedBox(height: 10,),
// //                 Text('USAMA ELECTRONICS',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
// //                 SizedBox(height:40,),
// //                 Form(
// //                   key: _formKey,
// //                   child: Column(
// //                     children: [
// //                       Padding(
// //                         padding: EdgeInsets.only(left: 0, right: 0),
// //                         child: TextFormField(
// //                           controller: user_id,
// //                           validator: (formValidate) {
// //                             if (formValidate.toString().isEmpty) {
// //                               return 'Please enter some text';
// //                             }
// //                             return null;
// //                           },
// //                           focusNode: foucusEmail,
// //                           onFieldSubmitted: (_) {
// //                             FocusScope.of(context).requestFocus(focusPassword);
// //                           },
// //                           keyboardType: TextInputType.emailAddress,
// //                           decoration: InputDecoration(
// //                               hintText: 'User Id',
// //                               fillColor: Colors.grey[200],
// //                               filled: true,
// //                               prefixIcon: Icon(
// //                                 Icons.account_circle,
// //                                 color: Colors.black54,
// //                               ),
// //                               focusedBorder: OutlineInputBorder(
// //                                   borderSide: BorderSide(
// //                                     color: Colors.white12,
// //                                   ))),
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         height: 20,
// //                       ),
// //                       TextFormField(
// //                         controller: user_pass,
// //                         validator: (formValidate) {
// //                           if (formValidate.toString().isEmpty) {
// //                             return 'Please enter password';
// //                           }
// //                           return null;
// //                         },
// //                         focusNode: focusPassword,
// //                         obscureText: _obscurePassword,
// //                         decoration: InputDecoration(
// //                           hintText: 'Password',
// //                           fillColor: Colors.grey[200],
// //                           filled: true,
// //                           prefixIcon: Icon(
// //                             Icons.lock,
// //                             color: Colors.black54,
// //                           ),
// //                           focusedBorder: OutlineInputBorder(
// //                             borderSide: BorderSide(
// //                               color: Colors.white12,
// //                             ),
// //                           ),
// //                           suffixIcon: GestureDetector(
// //                             onTap: () {
// //                               setState(() {
// //                                 _obscurePassword = !_obscurePassword;
// //                               });
// //                             },
// //                             child: Icon(
// //                               _obscurePassword ? Icons.visibility_off : Icons.visibility,
// //                               color: Colors.black54,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 SizedBox(height: 50),
// //                 //Login Box Start
// //                 InkWell(
// //                   onTap: () {
// //                     if (_formKey.currentState!.validate()) {
// //                       getDeviceInfo();
// //                     }
// //                   },
// //                   child: Container(
// //                     height: 50,
// //                     width: 320,
// //                     decoration: BoxDecoration(
// //                       boxShadow: [
// //                         BoxShadow(
// //                           color: Colors.black54,
// //                           offset: Offset(
// //                             2.0,
// //                             6.0,
// //                           ),
// //                           blurRadius: 10.0,
// //                           spreadRadius: 2.0,
// //                         ), //BoxShadow
// //                         BoxShadow(
// //                           color: Colors.white,
// //                           offset: Offset(0.0, 0.0),
// //                           blurRadius: 0.0,
// //                           spreadRadius: 0.0,
// //                         ), //BoxShadow
// //                       ],
// //                       color: Colors.red[700],
// //                       borderRadius: BorderRadius.circular(20),
// //                     ),
// //                     child: Center(
// //                       child: Text(
// //                         'Log In',
// //                         style: TextStyle(
// //                           fontSize: 24.0,
// //                           color: Colors.white,
// //                           fontFamily: ('Rubik Medium'),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //               // Lower Text Of Login Start
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   loginFun() async {
// //     try {
// //       var uri = await http.post(
// //           Uri.parse(login),
// //           body: {
// //             'userid': user_id.text,
// //             'password': user_pass.text,
// //             'imei': uniqueId
// //           });
// //       var dataz = jsonDecode(uri.body.toString());
// //       LoginModel loginModel =LoginModel.fromJson(dataz);
// //       if (loginModel.error == 400) {
// //
// //         print('-------------'+loginModel.error.toString());
// //         print('-------------'+loginModel.message.toString());
// //         // SHARED PREFERENCES FOR ADMIN LOGGED-IN
// //         await Shared_preferences.savedata(loginModel.user!);
// //         My_Funtions.f_toast(context, 'Admin Login Successfully', Colors.green);
// //         Navigator.pushReplacement(context,
// //             MaterialPageRoute(builder: (BuildContext context) {
// //               return DashboardPage();
// //             }));
// //
// //         // SHARED PREFERENCES FOR SALES-MAN LOGGED-IN
// //       } else if (loginModel.error == 200) {
// //         await Shared_preferences.savedata(loginModel.user!);
// //         My_Funtions.f_toast(
// //             context, 'SalesMan Login Successfully', Colors.green);
// //         Navigator.pushReplacement(context,
// //             MaterialPageRoute(builder: (BuildContext context) {
// //               return SalesManDashboardPage();
// //             }));
// //       } else {
// //         My_Funtions.f_toast(context, '${loginModel.message}', Colors.red);
// //       }
// //     }catch (e){
// //       // print('---------------'+ e.toString());
// //     }
// //   }
// //
// //   // // SHARED PREFENCES GETTING THE USER TYPE
// //   // getUserData() async {
// //   //   SharedPreferences sharedPrefences = await SharedPreferences.getInstance();
// //   //   var login = sharedPrefences.getString('loged');
// //   //   if (login == 'Collector') {
// //   //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
// //   //       return DashboardPage();
// //   //     }));
// //   //   } else {
// //   //     return;
// //   //   }
// //   // }
// //
// //
// //   // // GETTING DEVICE-ID FOR RUN APP ONLY IN A SINGLE DEVICE
// //   void getDeviceInfo() async {
// //     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
// //     if (Platform.isAndroid) {
// //       AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
// //       uniqueId = androidInfo.id ?? androidInfo.id;
// //       loginFun();
// //       // print('Unique ID:--- $uniqueId');
// //     } else if (Platform.isIOS) {
// //       IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
// //       uniqueId = iosInfo.identifierForVendor;
// //       loginFun();
// //       // print('Unique ID: $uniqueId');
// //     }
// //   }
// //
// //
// //
// // }
//
//
// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }
//
// class _MyWidgetState extends State<MyWidget> {
//   String hintText = 'Enter your Phone number';
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           keyboardType: TextInputType.phone,
//           maxLength: 10, // Limit the number of characters to 10
//           decoration: InputDecoration(
//             prefix: Text(
//               hintText,
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//             enabledBorder: InputBorder.none,
//             focusedBorder: InputBorder.none,
//             contentPadding: EdgeInsets.only(left: 10),
//             counterText: '', // Hide the default counter text
//             fillColor: Colors.white,
//             style: TextStyle(color: Colors.black, fontSize: 25), // Set the style of the input text
//           ),
//           onChanged: (value) {
//             setState(() {
//               if (value.isNotEmpty) {
//                 hintText = '+92 -';
//               } else {
//                 hintText = 'Enter your Phone number';
//               }
//             });
//           },
//         ),
//         ElevatedButton(
//           onPressed: () {
//             // Your button logic here
//           },
//           child: Text('Button'),
//         ),
//       ],
//     );
//   }
// }