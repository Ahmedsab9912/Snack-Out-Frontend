import 'package:flutter/material.dart';
import 'addfriendsscreen.dart';

class PartyScreen extends StatelessWidget {
  const PartyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                    width: 322,
                    height: 95,
                    margin: const EdgeInsets.only(top: 15, left: 5, right: 24),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF222222),
                            height: 1.2,
                          ),
                          children: [
                            TextSpan(text: 'Start Partying with\n'),
                            TextSpan(text: 'your Friends'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 250,
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/objects.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 291,
                    height: 104,
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(),
                          child: const Text(
                            'You haven’t saved any items',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: 150,
                          height: 44,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xFF00B288),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AddFriendsScreen()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Add Friends',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/addfriends.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
