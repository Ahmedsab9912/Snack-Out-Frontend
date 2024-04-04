// Container(
//     width: 342,
//     height: 94,
//     child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 44,
//                                         height: 44,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: ShapeDecoration(
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(
//                                                     width: 2,
//                                                     strokeAlign: BorderSide.strokeAlignOutside,
//                                                     color: Colors.white,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(6),
//                                             ),
//                                         ),
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Container(
//                                                     width: 44,
//                                                     height: 44,
//                                                     decoration: ShapeDecoration(
//                                                         image: DecorationImage(
//                                                             image: NetworkImage("https://via.placeholder.com/44x44"),
//                                                             fit: BoxFit.fill,
//                                                         ),
//                                                         shape: RoundedRectangleBorder(
//                                                             borderRadius: BorderRadius.circular(24),
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(width: 16),
//                                     SizedBox(
//                                         width: 204,
//                                         child: Text(
//                                             'Bagh Restaurant - Ultimate Desi Cuisine ',
//                                             style: TextStyle(
//                                                 color: Color(0xFF222222),
//                                                 fontSize: 16,
//                                                 fontFamily: 'Lato',
//                                                 fontWeight: FontWeight.w700,
//                                                 height: 0,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Text(
//                                                     '\$\$\$',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     '.',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     'The Desi Cuisine',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(width: 16),
//                                     Transform(
//                                         transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
//                                         child: Container(
//                                             width: 16,
//                                             decoration: ShapeDecoration(
//                                                 shape: RoundedRectangleBorder(
//                                                     side: BorderSide(
//                                                         width: 1,
//                                                         strokeAlign: BorderSide.strokeAlignCenter,
//                                                         color: Color(0xFF888888),
//                                                     ),
//                                                 ),
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 16),
//                                     Text(
//                                         '2.2 mi away',
//                                         style: TextStyle(
//                                             color: Color(0xFF888888),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w400,
//                                             height: 0,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Text(
//                                         '4.5',
//                                         style: TextStyle(
//                                             color: Color(0xFF222222),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFFFCC1B),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFFFCC1B),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFFFCC1B),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFFFCC1B),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFD9D9D9),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(width: 22),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 24,
//                             height: 24,
//                             child: Stack(children: [
//                             ,
//                             ]),
//                         ),
//                         const SizedBox(width: 8),
//                         Container(
//                             width: 24,
//                             height: 24,
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 24,
//                                         height: 24,
//                                         child: Stack(children: [
//                                         ,
//                                         ]),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 342,
//     height: 68,
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Text(
//                 'Select a Time-Slot',
//                 style: TextStyle(
//                     color: Color(0xFF222222),
//                     fontSize: 16,
//                     fontFamily: 'Lato',
//                     fontWeight: FontWeight.w700,
//                     height: 0,
//                 ),
//             ),
//             const SizedBox(height: 16),
//             Container(
//                 width: 342,
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(
//                                     side: BorderSide(width: 1, color: Color(0xFF00B288)),
//                                     borderRadius: BorderRadius.circular(8),
//                                 ),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Text(
//                                         'Custom',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                             color: Color(0xFF18191B),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w500,
//                                             height: 0,
//                                             letterSpacing: -0.14,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(width: 12),
//                         Container(
//                             padding: const EdgeInsets.all(8),
//                             decoration: ShapeDecoration(
//                                 color: Color(0xFFF8F8F8),
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Text(
//                                         '3:30 pm - 5:00 pm',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                             color: Color(0xFF18191B),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w500,
//                                             height: 0,
//                                             letterSpacing: -0.14,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(width: 12),
//                         Container(
//                             padding: const EdgeInsets.all(8),
//                             decoration: ShapeDecoration(
//                                 color: Color(0xFF00B288),
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Text(
//                                         '7:30 pm - 9:00 pm',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w500,
//                                             height: 0,
//                                             letterSpacing: -0.14,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//         ],
//     ),
// )
// Text(
//     'Select a Table',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// Container(
//     width: 163,
//     height: 192,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 139,
//                             height: 139,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 33.11,
//                                         top: 4,
//                                         child: Container(
//                                             width: 73.78,
//                                             height: 130.50,
//                                             child: Stack(
//                                                 children: [
//                                                     Positioned(
//                                                         left: 19.89,
//                                                         top: 0,
//                                                         child: Container(
//                                                             width: 34.50,
//                                                             height: 34.50,
//                                                             child: Stack(children: [
//                                                             ,
//                                                             ]),
//                                                         ),
//                                                     ),
//                                                     Positioned(
//                                                         left: 19.89,
//                                                         top: 96,
//                                                         child: Container(
//                                                             width: 34.50,
//                                                             height: 34.50,
//                                                             child: Stack(children: [
//                                                             ,
//                                                             ]),
//                                                         ),
//                                                     ),
//                                                 ],
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//                 '2-Seat Table',
//                 style: TextStyle(
//                     color: Color(0xFF222222),
//                     fontSize: 16,
//                     fontFamily: 'Lato',
//                     fontWeight: FontWeight.w600,
//                     height: 0,
//                 ),
//             ),
//         ],
//     ),
// )
// Text(
//     'Occupied Tables',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// Container(
//     width: 163,
//     height: 192,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 139,
//                             height: 139,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 33.11,
//                                         top: 4,
//                                         child: Container(
//                                             width: 73.78,
//                                             height: 130.50,
//                                             child: Stack(
//                                                 children: [
//                                                     Positioned(
//                                                         left: 19.89,
//                                                         top: 0,
//                                                         child: Container(
//                                                             width: 34.50,
//                                                             height: 34.50,
//                                                             child: Stack(children: [
//                                                             ,
//                                                             ]),
//                                                         ),
//                                                     ),
//                                                     Positioned(
//                                                         left: 19.89,
//                                                         top: 96,
//                                                         child: Container(
//                                                             width: 34.50,
//                                                             height: 34.50,
//                                                             child: Stack(children: [
//                                                             ,
//                                                             ]),
//                                                         ),
//                                                     ),
//                                                 ],
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//                 '2-Seat Table',
//                 style: TextStyle(
//                     color: Color(0xFF222222),
//                     fontSize: 16,
//                     fontFamily: 'Lato',
//                     fontWeight: FontWeight.w600,
//                     height: 0,
//                 ),
//             ),
//         ],
//     ),
// )
// Text(
//     '4-Seat Table',
//     style: TextStyle(
//         color: Color(0xFF222222),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w600,
//         height: 0,
//     ),
// )
// Container(
//     width: 163,
//     height: 163,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 139,
//                             height: 139,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 5,
//                                         top: 4,
//                                         child: Container(
//                                             width: 130.50,
//                                             height: 130.50,
//                                             child: Stack(
//                                                 children: [
//                                                     Positioned(
//                                                         left: 48,
//                                                         top: 0,
//                                                         child: Container(
//                                                             width: 34.50,
//                                                             height: 34.50,
//                                                             child: Stack(children: [
//                                                             ,
//                                                             ]),
//                                                         ),
//                                                     ),
//                                                     Positioned(
//                                                         left: 48,
//                                                         top: 96,
//                                                         child: Container(
//                                                             width: 34.50,
//                                                             height: 34.50,
//                                                             child: Stack(children: [
//                                                             ,
//                                                             ]),
//                                                         ),
//                                                     ),
//                                                     Positioned(
//                                                         left: 130.50,
//                                                         top: 48,
//                                                         child: Transform(
//                                                             transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
//                                                             child: Container(
//                                                                 width: 34.50,
//                                                                 height: 34.50,
//                                                                 child: Stack(children: [
//                                                                 ,
//                                                                 ]),
//                                                             ),
//                                                         ),
//                                                     ),
//                                                     Positioned(
//                                                         left: 34.50,
//                                                         top: 48,
//                                                         child: Transform(
//                                                             transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
//                                                             child: Container(
//                                                                 width: 34.50,
//                                                                 height: 34.50,
//                                                                 child: Stack(children: [
//                                                                 ,
//                                                                 ]),
//                                                             ),
//                                                         ),
//                                                     ),
//                                                 ],
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 166,
//     height: 51,
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Text(
//                 'Select Number of Seats',
//                 style: TextStyle(
//                     color: Color(0xFF00B288),
//                     fontSize: 16,
//                     fontFamily: 'Lato',
//                     fontWeight: FontWeight.w700,
//                     height: 0,
//                 ),
//             ),
//             const SizedBox(height: 8),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 24,
//                             height: 24,
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 5,
//                                         top: 10,
//                                         child: Container(
//                                             width: 14,
//                                             height: 4,
//                                             decoration: ShapeDecoration(
//                                                 color: Colors.white,
//                                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(width: 2),
//                         SizedBox(
//                             width: 24,
//                             height: 24,
//                             child: Text(
//                                 '4',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     color: Color(0xFF222222),
//                                     fontSize: 14,
//                                     fontFamily: 'Lato',
//                                     fontWeight: FontWeight.w500,
//                                     height: 0,
//                                 ),
//                             ),
//                         ),
//                         const SizedBox(width: 2),
//                         Container(
//                             width: 24,
//                             height: 24,
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 5,
//                                         top: 10,
//                                         child: Container(
//                                             width: 14,
//                                             height: 4,
//                                             decoration: ShapeDecoration(
//                                                 color: Colors.white,
//                                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
//                                             ),
//                                         ),
//                                     ),
//                                     Positioned(
//                                         left: 14,
//                                         top: 5,
//                                         child: Transform(
//                                             transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
//                                             child: Container(
//                                                 width: 14,
//                                                 height: 4,
//                                                 decoration: ShapeDecoration(
//                                                     color: Colors.white,
//                                                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
//                                                 ),
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 295,
//     height: 298,
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Text(
//                 'Pick a Date',
//                 style: TextStyle(
//                     color: Color(0xFF00B288),
//                     fontSize: 16,
//                     fontFamily: 'Lato',
//                     fontWeight: FontWeight.w700,
//                     height: 0,
//                 ),
//             ),
//             const SizedBox(height: 16),
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 295,
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 24,
//                                         height: 24,
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Container(
//                                                     width: 24,
//                                                     height: 24,
//                                                     child: Stack(children: [
//                                                     ,
//                                                     ]),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(width: 108),
//                                     Text(
//                                         'January',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                             color: Color(0xFF00B288),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(width: 108),
//                                     Container(
//                                         width: 24,
//                                         height: 24,
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Container(
//                                                     width: 24,
//                                                     height: 24,
//                                                     child: Stack(children: [
//                                                     ,
//                                                     ]),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 16),
//                         Container(
//                             width: 293,
//                             height: 223,
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 88,
//                                         top: 96,
//                                         child: Container(
//                                             width: 32,
//                                             height: 32,
//                                             decoration: ShapeDecoration(
//                                                 color: Color(0xFF00B288),
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius: BorderRadius.circular(10),
//                                                 ),
//                                             ),
//                                         ),
//                                     ),
//                                     Positioned(
//                                         left: 0,
//                                         top: 0,
//                                         child: Container(
//                                             width: 293,
//                                             height: 223,
//                                             child: Column(
//                                                 mainAxisSize: MainAxisSize.min,
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                                 children: [
//                                                     Container(
//                                                         child: Row(
//                                                             mainAxisSize: MainAxisSize.min,
//                                                             mainAxisAlignment: MainAxisAlignment.start,
//                                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                                             children: [
//                                                                 SizedBox(
//                                                                     width: 35,
//                                                                     height: 35,
//                                                                     child: Text(
//                                                                         '1',
//                                                                         textAlign: TextAlign.center,
//                                                                         style: TextStyle(
//                                                                             color: Color(0xFF222222),
//                                                                             fontSize: 12,
//                                                                             fontFamily: 'Lato',
//                                                                             fontWeight: FontWeight.w500,
//                                                                             height: 0,
//                                                                         ),
//                                                                     ),
//                                                                 ),
//                                                                 const SizedBox(width: 8),
//                                                                 SizedBox(
//                                                                     width: 35,
//                                                                     height: 35,
//                                                                     child: Text(
//                                                                         '2',
//                                                                         textAlign: TextAlign.center,
//                                                                         style: TextStyle(
//                                                                             color: Color(0xFF222222),
//                                                                             fontSize: 12,
//                                                                             fontFamily: 'Lato',
//                                                                             fontWeight: FontWeight.w500,
//                                                                             height: 0,
//                                                                         ),
//                                                                     ),
//                                                                 ),
//                                                                 const SizedBox(width: 8),
//                                                                 SizedBox(
//                                                                     width: 35,
//                                                                     height: 35,
//                                                                     child: Text(
//                                                                         '3',
//                                                                         textAlign: TextAlign.center,
//                                                                         style: TextStyle(
//                                                                             color: Color(0xFF222222),
//                                                                             fontSize: 12,
//                                                                             fontFamily: 'Lato',
//                                                                             fontWeight: FontWeight.w500,
//                                                                             height: 0,
//                                                                         ),
//                                                                     ),
//                                                                 ),
//                                                                 const SizedBox(width: 8),
//                                                                 SizedBox(
//                                                                     width: 35,
//                                                                     height: 35,
//                                                                     child: Text(
//                                                                         '4',
//                                                                         textAlign: TextAlign.center,
//                                                                         style: TextStyle(
//                                                                             color: Color(0xFF222222),
//                                                                             fontSize: 12,
//                                                                             fontFamily: 'Lato',
//                                                                             fontWeight: FontWeight.w500,
//                                                                             height: 0,
//                                                                         ),
//                                                                     ),
//                                                                 ),
//                                                             ],
//                                                         ),
//                                                     ),
//                                                     const SizedBox(height: 12),
//                                                     Container(
//                                                         child: Column(
//                                                             mainAxisSize: MainAxisSize.min,
//                                                             mainAxisAlignment: MainAxisAlignment.start,
//                                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                                             children: [
//                                                                 Container(
//                                                                     child: Row(
//                                                                         mainAxisSize: MainAxisSize.min,
//                                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                                         children: [
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '5',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '6',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '7',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '8',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '9',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '10',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '11',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                         ],
//                                                                     ),
//                                                                 ),
//                                                                 const SizedBox(height: 12),
//                                                                 Container(
//                                                                     child: Row(
//                                                                         mainAxisSize: MainAxisSize.min,
//                                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                                         children: [
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '12',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '13',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '14',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Colors.white,
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '15',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '16',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '17',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '18',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                         ],
//                                                                     ),
//                                                                 ),
//                                                                 const SizedBox(height: 12),
//                                                                 Container(
//                                                                     child: Row(
//                                                                         mainAxisSize: MainAxisSize.min,
//                                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                                         children: [
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '19',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '20',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '21',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '22',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '23',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '24',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '25',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                         ],
//                                                                     ),
//                                                                 ),
//                                                                 const SizedBox(height: 12),
//                                                                 Container(
//                                                                     child: Row(
//                                                                         mainAxisSize: MainAxisSize.min,
//                                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                                         children: [
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '26',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '27',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '28',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '29',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '30',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                             const SizedBox(width: 8),
//                                                                             SizedBox(
//                                                                                 width: 35,
//                                                                                 height: 35,
//                                                                                 child: Text(
//                                                                                     '31',
//                                                                                     textAlign: TextAlign.center,
//                                                                                     style: TextStyle(
//                                                                                         color: Color(0xFF222222),
//                                                                                         fontSize: 12,
//                                                                                         fontFamily: 'Lato',
//                                                                                         fontWeight: FontWeight.w500,
//                                                                                         height: 0,
//                                                                                     ),
//                                                                                 ),
//                                                                             ),
//                                                                         ],
//                                                                     ),
//                                                                 ),
//                                                             ],
//                                                         ),
//                                                     ),
//                                                 ],
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 298,
//     height: 80,
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Text(
//                 'Pick Time Slot',
//                 style: TextStyle(
//                     color: Color(0xFF00B288),
//                     fontSize: 16,
//                     fontFamily: 'Lato',
//                     fontWeight: FontWeight.w700,
//                     height: 0,
//                 ),
//             ),
//             const SizedBox(height: 8),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'From',
//                                         style: TextStyle(
//                                             color: Color(0xFF222222),
//                                             fontSize: 12,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w500,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 6),
//                                     Container(
//                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                                         decoration: ShapeDecoration(
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(width: 1, color: Color(0xFF00B288)),
//                                                 borderRadius: BorderRadius.circular(8),
//                                             ),
//                                         ),
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Text(
//                                                     '4:00 pm',
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                         color: Color(0xFF18191B),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w500,
//                                                         height: 0,
//                                                         letterSpacing: -0.14,
//                                                     ),
//                                                 ),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     child: Row(
//                                                         mainAxisSize: MainAxisSize.min,
//                                                         mainAxisAlignment: MainAxisAlignment.center,
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                             Container(
//                                                                 width: 16,
//                                                                 height: 16,
//                                                                 child: Stack(children: [
//                                                                 ,
//                                                                 ]),
//                                                             ),
//                                                         ],
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(width: 20),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'From',
//                                         style: TextStyle(
//                                             color: Color(0xFF222222),
//                                             fontSize: 12,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w500,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 6),
//                                     Container(
//                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                                         decoration: ShapeDecoration(
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
//                                                 borderRadius: BorderRadius.circular(8),
//                                             ),
//                                         ),
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Text(
//                                                     '7:00 pm',
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                         color: Color(0xFF18191B),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w500,
//                                                         height: 0,
//                                                         letterSpacing: -0.14,
//                                                     ),
//                                                 ),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     child: Row(
//                                                         mainAxisSize: MainAxisSize.min,
//                                                         mainAxisAlignment: MainAxisAlignment.center,
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                             Container(
//                                                                 width: 16,
//                                                                 height: 16,
//                                                                 child: Stack(children: [
//                                                                 ,
//                                                                 ]),
//                                                             ),
//                                                         ],
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 342,
//     height: 44,
//     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//     decoration: ShapeDecoration(
//         color: Color(0xFF00B288),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//     ),
//     child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//             Text(
//                 'Confirm Booking',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontFamily: 'Lato',
//                     fontWeight: FontWeight.w700,
//                     height: 0.08,
//                 ),
//             ),
//         ],
//     ),
// )