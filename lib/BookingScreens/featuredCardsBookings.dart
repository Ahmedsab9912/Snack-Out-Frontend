import 'package:eataly/BookingScreens/ConformBooking.dart';
import 'package:eataly/TableScreens/twoTable.dart';
import 'package:flutter/material.dart';
import '../TableScreens/fourTable.dart';

import '../TableScreens/eightTable.dart';
import '../TableScreens/sixTable.dart';

class Bookings extends StatelessWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //implements basic material design
        body: Column(
      children: [
        Expanded(
          child: ListView(children: [
            const Padding(
              padding: EdgeInsets.only(
                  top: 24,
                  left: 24), // Add 24px top margin and 8px bottom padding
              child: Text(
                'Available Seats',
                style: TextStyle(
                  color: Color(0xFF00C572),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           const TwoTable()), // Replace YourNewScreen with the actual screen class you want to navigate to
                    // );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 16),
                    width: 163,
                    height: 192,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 137,
                              height: 137,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Image.asset(
                                'assets/images/2seat.png', // Replace with your image asset path
                                fit: BoxFit
                                    .cover, // This makes sure the image covers the container area
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '2-Seat Table',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           const FourTable()), // Replace YourNewScreen with the actual screen class you want to navigate to
                    // );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 16),
                    width: 163,
                    height: 192,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 137,
                              height: 137,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 5,
                                    top: 4,
                                    child: SizedBox(
                                      width: 130.50,
                                      height: 130.50,
                                      child: Image.asset(
                                        'assets/images/4seat.png', // Replace with your image asset path
                                        fit: BoxFit
                                            .cover, // This makes sure the image covers the container area
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '4-Seat Table',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           const SixTable()), // Replace YourNewScreen with the actual screen class you want to navigate to
                    // );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 16),
                    width: 163,
                    height: 192,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 137,
                              height: 137,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Image.asset(
                                'assets/images/6seat.png', // Replace with your image asset path
                                fit: BoxFit
                                    .cover, // This makes sure the image covers the container area
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '6-Seat Table',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           const EightTable()), // Replace YourNewScreen with the actual screen class you want to navigate to
                    // );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 16),
                    width: 163,
                    height: 192,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 137,
                              height: 137,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Image.asset(
                                'assets/images/8seat.png', // Replace with your image asset path
                                fit: BoxFit
                                    .cover, // This makes sure the image covers the container area
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '8-Seat Table',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //                   const TwoTable()), // Replace YourNewScreen with the actual screen class you want to navigate to
            //         );
            //       },
            //       child: Container(
            //         margin: const EdgeInsets.only(top: 16, bottom: 16),
            //         width: 163,
            //         height: 192,
            //         padding: const EdgeInsets.all(12),
            //         clipBehavior: Clip.antiAlias,
            //         decoration: ShapeDecoration(
            //           color: Colors.white,
            //           shape: RoundedRectangleBorder(
            //             side: const BorderSide(
            //                 width: 1, color: Color(0xFFD0D5DD)),
            //             borderRadius: BorderRadius.circular(16),
            //           ),
            //         ),
            //         child: Column(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Column(
            //               mainAxisSize: MainAxisSize.min,
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Container(
            //                   width: 137,
            //                   height: 137,
            //                   clipBehavior: Clip.antiAlias,
            //                   decoration: ShapeDecoration(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(8)),
            //                   ),
            //                   child: Image.asset(
            //                     'assets/images/4seat.png', // Replace with your image asset path
            //                     fit: BoxFit
            //                         .cover, // This makes sure the image covers the container area
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             const SizedBox(height: 10),
            //             const Text(
            //               '4-Seat Table',
            //               style: TextStyle(
            //                 color: Color(0xFF222222),
            //                 fontSize: 16,
            //                 fontFamily: 'Lato',
            //                 fontWeight: FontWeight.w600,
            //                 height: 0,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //                   const TwoTable()), // Replace YourNewScreen with the actual screen class you want to navigate to
            //         );
            //       },
            //       child: Container(
            //         margin: const EdgeInsets.only(top: 16, bottom: 16),
            //         width: 163,
            //         height: 192,
            //         padding: const EdgeInsets.all(12),
            //         clipBehavior: Clip.antiAlias,
            //         decoration: ShapeDecoration(
            //           color: Colors.white,
            //           shape: RoundedRectangleBorder(
            //             side: const BorderSide(
            //                 width: 1, color: Color(0xFFD0D5DD)),
            //             borderRadius: BorderRadius.circular(16),
            //           ),
            //         ),
            //         child: Column(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Column(
            //               mainAxisSize: MainAxisSize.min,
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Container(
            //                   width: 137,
            //                   height: 137,
            //                   clipBehavior: Clip.antiAlias,
            //                   decoration: ShapeDecoration(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(8)),
            //                   ),
            //                   child: Image.asset(
            //                     'assets/images/2seat.png', // Replace with your image asset path
            //                     fit: BoxFit
            //                         .cover, // This makes sure the image covers the container area
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             const SizedBox(height: 10),
            //             const Text(
            //               '2-Seat Table',
            //               style: TextStyle(
            //                 color: Color(0xFF222222),
            //                 fontSize: 16,
            //                 fontFamily: 'Lato',
            //                 fontWeight: FontWeight.w600,
            //                 height: 0,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(left: 24),
            //   child: Text(
            //     'Occupied Tables',
            //     style: TextStyle(
            //       color: Color(0xFF00C572),
            //       fontSize: 16,
            //       fontFamily: 'Lato',
            //       fontWeight: FontWeight.w700,
            //       height: 0,
            //     ),
            //   ),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.only(top: 16, bottom: 16),
            //       width: 163,
            //       height: 192,
            //       padding: const EdgeInsets.all(12),
            //       clipBehavior: Clip.antiAlias,
            //       decoration: ShapeDecoration(
            //         color: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           side:
            //               const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
            //           borderRadius: BorderRadius.circular(16),
            //         ),
            //       ),
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Column(
            //             mainAxisSize: MainAxisSize.min,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Container(
            //                 width: 137,
            //                 height: 137,
            //                 clipBehavior: Clip.antiAlias,
            //                 decoration: ShapeDecoration(
            //                   shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(8)),
            //                 ),
            //                 child: Image.asset(
            //                   'assets/images/2seatBlack.png', // Replace with your image asset path
            //                   fit: BoxFit
            //                       .cover, // This makes sure the image covers the container area
            //                 ),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             '2-Seat Table',
            //             style: TextStyle(
            //               color: Color(0xFF222222),
            //               fontSize: 16,
            //               fontFamily: 'Lato',
            //               fontWeight: FontWeight.w600,
            //               height: 0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(top: 16, bottom: 16),
            //       width: 163,
            //       height: 192,
            //       padding: const EdgeInsets.all(12),
            //       clipBehavior: Clip.antiAlias,
            //       decoration: ShapeDecoration(
            //         color: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           side:
            //               const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
            //           borderRadius: BorderRadius.circular(16),
            //         ),
            //       ),
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Column(
            //             mainAxisSize: MainAxisSize.min,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Container(
            //                 width: 137,
            //                 height: 137,
            //                 clipBehavior: Clip.antiAlias,
            //                 decoration: ShapeDecoration(
            //                   shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(8)),
            //                 ),
            //                 child: Image.asset(
            //                   'assets/images/4seatBlack.png', // Replace with your image asset path
            //                   fit: BoxFit
            //                       .cover, // This makes sure the image covers the container area
            //                 ),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             '4-Seat Table',
            //             style: TextStyle(
            //               color: Color(0xFF222222),
            //               fontSize: 16,
            //               fontFamily: 'Lato',
            //               fontWeight: FontWeight.w600,
            //               height: 0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.only(top: 16, bottom: 16),
            //       width: 163,
            //       height: 192,
            //       padding: const EdgeInsets.all(12),
            //       clipBehavior: Clip.antiAlias,
            //       decoration: ShapeDecoration(
            //         color: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           side:
            //               const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
            //           borderRadius: BorderRadius.circular(16),
            //         ),
            //       ),
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Column(
            //             mainAxisSize: MainAxisSize.min,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Container(
            //                 width: 137,
            //                 height: 137,
            //                 clipBehavior: Clip.antiAlias,
            //                 decoration: ShapeDecoration(
            //                   shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(8)),
            //                 ),
            //                 child: Image.asset(
            //                   'assets/images/6seatBlack.png', // Replace with your image asset path
            //                   fit: BoxFit
            //                       .cover, // This makes sure the image covers the container area
            //                 ),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             '6-Seat Table',
            //             style: TextStyle(
            //               color: Color(0xFF222222),
            //               fontSize: 16,
            //               fontFamily: 'Lato',
            //               fontWeight: FontWeight.w600,
            //               height: 0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(top: 16, bottom: 16),
            //       width: 163,
            //       height: 192,
            //       padding: const EdgeInsets.all(12),
            //       clipBehavior: Clip.antiAlias,
            //       decoration: ShapeDecoration(
            //         color: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           side:
            //               const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
            //           borderRadius: BorderRadius.circular(16),
            //         ),
            //       ),
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Column(
            //             mainAxisSize: MainAxisSize.min,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Container(
            //                 width: 137,
            //                 height: 137,
            //                 clipBehavior: Clip.antiAlias,
            //                 decoration: ShapeDecoration(
            //                   shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(8)),
            //                 ),
            //                 child: Image.asset(
            //                   'assets/images/8seatBlack.png', // Replace with your image asset path
            //                   fit: BoxFit
            //                       .cover, // This makes sure the image covers the container area
            //                 ),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             '8-Seat Table',
            //             style: TextStyle(
            //               color: Color(0xFF222222),
            //               fontSize: 16,
            //               fontFamily: 'Lato',
            //               fontWeight: FontWeight.w600,
            //               height: 0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
          ]),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ConformBookingScreen()), // Replace YourNewScreen with the actual screen class you want to navigate to
            );
          },
          child: Container(
            height: 44,
            width: 326,
            decoration: BoxDecoration(
              color: Color(0xFF00B286),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Make a Booking',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    )
    );
  }
}
