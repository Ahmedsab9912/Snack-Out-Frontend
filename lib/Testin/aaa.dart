// import 'package:flutter/material.dart';
//
// class MyPhoneNumberField extends StatelessWidget {
//   final TextEditingController _phoneNumberController = TextEditingController();
//   final FocusNode _phoneNumberFocusNode = FocusNode();
//   final FocusNode _phoneNumberVerificationFocusNode = FocusNode();
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       maxLength: 11,
//       controller: _phoneNumberController,
//       focusNode: _phoneNumberFocusNode,
//       decoration: InputDecoration(
//         labelText: 'Phone Number',
//         prefixIcon: Padding(
//           padding: const EdgeInsets.only(right: 8.0),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Image.asset(
//                 'assets/pakistan_flag.png', // Make sure you have the flag image in your assets folder
//                 width: 24,
//                 height: 24,
//               ),
//               SizedBox(width: 8),
//               Text('+92'),
//             ],
//           ),
//         ),
//       ),
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter your phone number';
//         }
//         return null;
//       },
//       textInputAction: TextInputAction.next,
//       onFieldSubmitted: (_) {
//         FocusScope.of(context).requestFocus(_phoneNumberVerificationFocusNode);
//       },
//     );
//   }
// }
