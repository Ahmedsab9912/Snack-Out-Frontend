import 'package:flutter/material.dart';
import 'loginscreen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> controllers =
        List.generate(4, (_) => TextEditingController());

    void clearOtherTextFields(int index) {
      for (int i = 0; i < controllers.length; i++) {
        if (i != index) {
          controllers[i].clear();
        }
      }
    }

    void handleTextFieldChange(int index, String value) {
      if (value.length == 1) {
        if (index < controllers.length - 1) {
          FocusScope.of(context).nextFocus();
        }
      }
    }

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
            left: (340 - 205) / 2,
            top: 260,
            child: Text(
              'Welcome To Eataly',
              style: TextStyle(
                color: Color(0xFF00ECB4),
                fontSize: 26,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0.03,
              ),
            ),
          ),
          const Positioned(
            left: 32,
            top: 300,
            child: SizedBox(
              width: 300,
              height: 28,
              child: Text(
                'Please enter your details to proceed further',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: SizedBox(
              width: 362,
              height: 70,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: GestureDetector(
                                  onTap: () {
                                    clearOtherTextFields(i);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0,
                                            color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: TextField(
                                        controller: controllers[i],
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        maxLength: 1,
                                        onChanged: (value) {
                                          handleTextFieldChange(i, value);
                                        },
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        decoration: const InputDecoration(
                                          counterText: "",
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 450,
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
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF00B287),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 130,
                    top: 24,
                    child: SizedBox(
                      width: 102,
                      height: 24,
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Color(0xFFD3D3D3),
                          fontSize: 16,
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
