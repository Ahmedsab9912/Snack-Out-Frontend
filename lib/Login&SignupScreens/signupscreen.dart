import 'package:flutter/material.dart';
import 'otpscreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 432,
            height: 932,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/backgroundimage.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Container(
            width: 432,
            height: 932,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.01, 1.00),
                end: const Alignment(-0.01, -1),
                colors: [Colors.black, Colors.black.withOpacity(0.1)],
              ),
            ),
          ),
          Positioned(
            top: 56,
            left: (340 - 140) / 2,
            child: SizedBox(
              width: 150,
              height: 100,
              child: Image.asset(
                'assets/images/eataly.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Positioned(
            left: 47,
            top: 170,
            child: SizedBox(
              width: 262,
              child: Text(
                'Instant Table Reservations!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Forum',
                  fontWeight: FontWeight.w400,
                  height: 0.06,
                ),
              ),
            ),
          ),
          const Positioned(
            left: (340 - 80) / 2,
            top: 230,
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Color(0xFF00ECB4),
                fontSize: 26,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0.03,
              ),
            ),
          ),
          Positioned(
            top: 265,
            child: SizedBox(
              width: 350,
              height: 99,
              child: Stack(
                children: [
                  Positioned(
                    left: 28,
                    top: 35,
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0x33D9D9D9),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 28,
                    top: 5,
                    child: SizedBox(
                      width: 300,
                      height: 28,
                      child: Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 58,
                    child: SizedBox(
                      width: 173,
                      height: 16,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        maxLength: 16,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Name',
                          hintStyle: TextStyle(
                            color: Color(0xFFD3D3D3),
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none, // Remove underline
                          counterText: '', // Hide the default counter text
                        ),
                        style: TextStyle(
                          color: Color(
                              0xFFD3D3D3), // Set text color to be visible when user enters text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 357,
            child: SizedBox(
              width: 350,
              height: 99,
              child: Stack(
                children: [
                  Positioned(
                    left: 28,
                    top: 35,
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0x33D9D9D9),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 28,
                    top: 5,
                    child: SizedBox(
                      width: 300,
                      height: 28,
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 58,
                    child: SizedBox(
                      width: 173,
                      height: 16,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        maxLength: 11,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Phone Number',
                          hintStyle: TextStyle(
                            color: Color(0xFFD3D3D3),
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none, // Remove underline
                          counterText: '', // Hide the default counter text
                        ),
                        style: TextStyle(
                          color: Color(
                              0xFFD3D3D3), // Set text color to be visible when user enters text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 447,
            child: SizedBox(
              width: 350,
              height: 99,
              child: Stack(
                children: [
                  Positioned(
                    left: 28,
                    top: 35,
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0x33D9D9D9),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 28,
                    top: 5,
                    child: SizedBox(
                      width: 300,
                      height: 28,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 58,
                    child: SizedBox(
                      width: 173,
                      height: 16,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          hintStyle: TextStyle(
                            color: Color(0xFFD3D3D3),
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none, // Remove underline
                        ),
                        style: TextStyle(
                          color: Color(
                              0xFFD3D3D3), // Set text color to be visible when user enters text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 539,
            child: SizedBox(
              width: 350,
              height: 99,
              child: Stack(
                children: [
                  Positioned(
                    left: 28,
                    top: 35,
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0x33D9D9D9),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 28,
                    top: 5,
                    child: SizedBox(
                      width: 300,
                      height: 28,
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 58,
                    child: SizedBox(
                      width: 173,
                      height: 16,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Re-enter Your Password',
                          hintStyle: TextStyle(
                            color: Color(0xFFD3D3D3),
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none, // Remove underline
                        ),
                        style: TextStyle(
                          color: Color(
                              0xFFD3D3D3), // Set text color to be visible when user enters text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 7,
            top: 650,
            child: SizedBox(
              width: 340,
              height: 99,
              child: Stack(
                children: [
                  Positioned(
                    left: 22.5,
                    top: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtpScreen()),
                        );
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF00B287),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 138,
                    top: 24,
                    child: SizedBox(
                      width: 61,
                      height: 24,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFFD3D3D3),
                          fontSize: 17,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
