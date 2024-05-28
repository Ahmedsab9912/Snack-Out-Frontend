// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Rounded Network Image'),
//         ),
//         body: Center(
//           child: ClipRRect(
//             borderRadius:
//                 BorderRadius.circular(30), // Adjust the radius as needed
//             child: Image.network(
//               'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D',
//               height: 220,
//               width: 350,
//               fit: BoxFit.cover,
//               loadingBuilder: (BuildContext context, Widget child,
//                   ImageChunkEvent? loadingProgress) {
//                 if (loadingProgress == null) return child;
//                 return Center(
//                   child: CircularProgressIndicator(
//                     value: loadingProgress.expectedTotalBytes != null
//                         ? loadingProgress.cumulativeBytesLoaded /
//                             (loadingProgress.expectedTotalBytes ?? 1)
//                         : null,
//                   ),
//                 );
//               },
//               errorBuilder: (context, error, stackTrace) {
//                 return Center(child: Text('Failed to load image'));
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
