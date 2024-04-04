// Text(
//     'Menu',
//     style: TextStyle(
//         color: Color(0xFF00B288),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// Container(
//     width: 342,
//     height: 104,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                         Container(
//                             height: 80,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 80,
//                                         height: 121,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: NetworkImage("https://via.placeholder.com/80x121"),
//                                                 fit: BoxFit.fill,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(width: 12),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'Caprese Salad',
//                                         style: TextStyle(
//                                             color: Color(0xFF00B288),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 4),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 SizedBox(
//                                                     width: 155,
//                                                     child: Text(
//                                                         'Fresh mozzarella, tomatoes, basil, balsamic glaze',
//                                                         style: TextStyle(
//                                                             color: Color(0xFF888888),
//                                                             fontSize: 12,
//                                                             fontFamily: 'Lato',
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(height: 4),
//                                     Text.rich(
//                                         TextSpan(
//                                             children: [
//                                                 TextSpan(
//                                                     text: 'Starting from ',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 12,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 TextSpan(
//                                                     text: '\$200',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF222222),
//                                                         fontSize: 12,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w600,
//                                                         height: 0,
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
//             const SizedBox(width: 14),
//             Container(
//                 height: 16,
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 16,
//                             height: 16,
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 5,
//                                         top: 7,
//                                         child: Container(
//                                             width: 6,
//                                             height: 2,
//                                             decoration: ShapeDecoration(
//                                                 color: Colors.white,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius: BorderRadius.circular(4.57),
//                                                 ),
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(width: 1),
//                         Expanded(
//                             child: Container(
//                                 height: double.infinity,
//                                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
//                                 clipBehavior: Clip.antiAlias,
//                                 decoration: BoxDecoration(color: Colors.white),
//                                 child: Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                         SizedBox(
//                                             width: 7,
//                                             height: 13,
//                                             child: Text(
//                                                 '1',
//                                                 textAlign: TextAlign.center,
//                                                 style: TextStyle(
//                                                     color: Color(0xFF222222),
//                                                     fontSize: 12,
//                                                     fontFamily: 'Lato',
//                                                     fontWeight: FontWeight.w400,
//                                                     height: 0,
//                                                 ),
//                                             ),
//                                         ),
//                                     ],
//                                 ),
//                             ),
//                         ),
//                         const SizedBox(width: 1),
//                         Container(
//                             width: 16,
//                             height: 16,
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 5,
//                                         top: 7,
//                                         child: Container(
//                                             width: 6,
//                                             height: 2,
//                                             decoration: ShapeDecoration(
//                                                 color: Colors.white,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius: BorderRadius.circular(4.57),
//                                                 ),
//                                             ),
//                                         ),
//                                     ),
//                                     Positioned(
//                                         left: 9,
//                                         top: 5,
//                                         child: Transform(
//                                             transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
//                                             child: Container(
//                                                 width: 6,
//                                                 height: 2,
//                                                 decoration: ShapeDecoration(
//                                                     color: Colors.white,
//                                                     shape: RoundedRectangleBorder(
//                                                         borderRadius: BorderRadius.circular(4.57),
//                                                     ),
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
//     width: 342,
//     height: 104,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                         Container(
//                             height: 80,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 80,
//                                         height: 121,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: NetworkImage("https://via.placeholder.com/80x121"),
//                                                 fit: BoxFit.fill,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(width: 12),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'Caprese Salad',
//                                         style: TextStyle(
//                                             color: Color(0xFF00B288),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 4),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 SizedBox(
//                                                     width: 155,
//                                                     child: Text(
//                                                         'Fresh mozzarella, tomatoes, basil, balsamic glaze',
//                                                         style: TextStyle(
//                                                             color: Color(0xFF888888),
//                                                             fontSize: 12,
//                                                             fontFamily: 'Lato',
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(height: 4),
//                                     Text.rich(
//                                         TextSpan(
//                                             children: [
//                                                 TextSpan(
//                                                     text: 'Starting from ',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 12,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 TextSpan(
//                                                     text: '\$200',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF222222),
//                                                         fontSize: 12,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w600,
//                                                         height: 0,
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
//             const SizedBox(width: 14),
//             Container(
//                 height: 16,
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 16,
//                             height: 16,
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 5,
//                                         top: 7,
//                                         child: Container(
//                                             width: 6,
//                                             height: 2,
//                                             decoration: ShapeDecoration(
//                                                 color: Colors.white,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius: BorderRadius.circular(4.57),
//                                                 ),
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(width: 1),
//                         Expanded(
//                             child: Container(
//                                 height: double.infinity,
//                                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
//                                 clipBehavior: Clip.antiAlias,
//                                 decoration: BoxDecoration(color: Colors.white),
//                                 child: Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                         SizedBox(
//                                             width: 7,
//                                             height: 13,
//                                             child: Text(
//                                                 '1',
//                                                 textAlign: TextAlign.center,
//                                                 style: TextStyle(
//                                                     color: Color(0xFF222222),
//                                                     fontSize: 12,
//                                                     fontFamily: 'Lato',
//                                                     fontWeight: FontWeight.w400,
//                                                     height: 0,
//                                                 ),
//                                             ),
//                                         ),
//                                     ],
//                                 ),
//                             ),
//                         ),
//                         const SizedBox(width: 1),
//                         Container(
//                             width: 16,
//                             height: 16,
//                             child: Stack(
//                                 children: [
//                                     Positioned(
//                                         left: 5,
//                                         top: 7,
//                                         child: Container(
//                                             width: 6,
//                                             height: 2,
//                                             decoration: ShapeDecoration(
//                                                 color: Colors.white,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius: BorderRadius.circular(4.57),
//                                                 ),
//                                             ),
//                                         ),
//                                     ),
//                                     Positioned(
//                                         left: 9,
//                                         top: 5,
//                                         child: Transform(
//                                             transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
//                                             child: Container(
//                                                 width: 6,
//                                                 height: 2,
//                                                 decoration: ShapeDecoration(
//                                                     color: Colors.white,
//                                                     shape: RoundedRectangleBorder(
//                                                         borderRadius: BorderRadius.circular(4.57),
//                                                     ),
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
//                 'Make a Booking',
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