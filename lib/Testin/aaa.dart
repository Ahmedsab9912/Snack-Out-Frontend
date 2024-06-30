// import 'package:flutter/material.dart';
//
// class ff extends StatefulWidget {
//   const ff({super.key});
//
//   @override
//   State<ff> createState() => _ffState();
// }
//
// class _ffState extends State<ff> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:   SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 34.0), // Adjust margin as needed
//               color: Color(0xff757575),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(20.0),
//                     topLeft: Radius.circular(20.0),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     bottom: MediaQuery.of(context).viewInsets.bottom,
//                     left: 12.0, // Added horizontal margin
//                     right: 12.0, // Added horizontal margin
//                   ),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(height: 17,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 80),
//                               child: Container(
//                                 height: 51,
//                                 width: 51,
//                                 margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
//                                 child: CircleAvatar(
//                                   radius: 30,
//                                   backgroundImage: AssetImage("assets/images/arthur.png"),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 5),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 170, bottom: 8),
//                                     child: Text(
//                                       "Ali Jahangir",
//                                       style: TextStyle(
//                                         fontSize: 12,
//                                         fontFamily: "Lato",
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 100),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(6),
//                                         color: Color.fromRGBO(237, 208, 255, 1),
//                                       ),
//                                       child: Column(
//                                         children: <Widget>[
//                                           Padding(
//                                             padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                             child: Column(
//                                               children: [
//                                                 Padding(
//                                                   padding: EdgeInsets.all(8.0),
//                                                   child: Text(
//                                                     "Hey everyone!",
//                                                     style: TextStyle(fontFamily: "Lato"),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 8,),
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 90),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(6),
//                                         color: Color.fromRGBO(237, 208, 255, 1),
//                                       ),
//                                       child: Column(
//                                         children: <Widget>[
//                                           Padding(
//                                             padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                             child: Column(
//                                               children: [
//                                                 Padding(
//                                                   padding: EdgeInsets.all(8.0),
//                                                   child: Text("What’s the plan?"),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 16,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 90),
//                               child: Container(
//                                 height: 51,
//                                 width: 51,
//                                 margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
//                                 child: CircleAvatar(
//                                   radius: 30,
//                                   backgroundImage: AssetImage("assets/images/audrey.png"),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 5),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 175, bottom: 8),
//                                     child: Text(
//                                       "Sarah",
//                                       style: TextStyle(
//                                         fontSize: 12,
//                                         fontFamily: "Lato",
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(6),
//                                       color: Color.fromRGBO(237, 208, 255, 1),
//                                     ),
//                                     child: Column(
//                                       children: <Widget>[
//                                         Padding(
//                                           padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                           child: Column(
//                                             children: [
//                                               Padding(
//                                                 padding: EdgeInsets.all(8.0),
//                                                 child: Text(
//                                                   "Let’s go to a Burger Place",
//                                                   style: TextStyle(fontFamily: "Lato"),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(height: 8,),
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 70),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(6),
//                                         color: Color.fromRGBO(237, 208, 255, 1),
//                                       ),
//                                       child: Column(
//                                         children: <Widget>[
//                                           Padding(
//                                             padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                             child: Column(
//                                               children: [
//                                                 Padding(
//                                                   padding: EdgeInsets.all(8.0),
//                                                   child: Text("Add Rachel too!"),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 16,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Column(
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 150),
//                                   child: Text(
//                                     "You",
//                                     style: TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 8,),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(6),
//                                     color: Colors.grey[300],
//                                   ),
//                                   child: Column(
//                                     children: <Widget>[
//                                       Padding(
//                                         padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                         child: Column(
//                                           children: [
//                                             Padding(
//                                               padding: EdgeInsets.all(8.0),
//                                               child: Text("Burger Place uhhhh okay"),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 15),
//                               child: Container(
//                                 height: 51,
//                                 width: 51,
//                                 margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
//                                 child: CircleAvatar(
//                                   radius: 30,
//                                   backgroundImage: AssetImage("assets/images/you.png"),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 15,),
//                         Row(
//                           children: [
//                             Flexible(
//                               child: Container(
//                                 padding: EdgeInsets.only(left: 12.0),
//                                 height: size.height * 0.09, // Adjust height as needed
//                                 child: Column(
//                                   children: <Widget>[
//                                     Padding(
//                                       padding: EdgeInsets.only(top: 10),
//                                       child: TextFormField(
//                                         decoration: InputDecoration(
//                                           border: OutlineInputBorder(
//                                             borderRadius: BorderRadius.circular(8),
//                                           ),
//                                           hintText: "Type Message",
//                                           hintStyle: TextStyle(fontSize: 14, color: Colors.black),
//                                           suffixIcon: Icon(
//                                             Icons.send,
//                                             color: AppColors.primaryTextColor,
//                                           ),
//                                         ),
//                                         style: TextStyle(fontSize: 14), // Reduce font size if needed
//                                         maxLines: 1, // Ensure single line height
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 15),
//                               child: Container(
//                                 height: 40,
//                                 width: 40,
//                                 margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
//                                 child: CircleAvatar(
//                                   radius: 30,
//                                   backgroundImage: AssetImage("assets/images/you.png"),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//        ),
//     );
//   }
// }
