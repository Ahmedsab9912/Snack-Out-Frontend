import 'package:flutter/material.dart';

class AddFriendsPage extends StatefulWidget {
  const AddFriendsPage({super.key});

  @override
  State<AddFriendsPage> createState() => _AddFriendsPageState();
}

class _AddFriendsPageState extends State<AddFriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Friends'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 70, // Increase the height as needed
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // validator: (formValidate) {
                    //   if (formValidate.toString().isEmpty) {
                    //     return 'Please enter some text';
                    //   }
                    //   return null;
                    // },
                    // focusNode: foucusEmail,
                    // onFieldSubmitted: (_) {
                    //   FocusScope.of(context).requestFocus(focusPassword);
                    // },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Search by Name.',
                      hintStyle:
                          TextStyle(color: Colors.black54, fontSize: 15.0),
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(31, 0, 0, 0),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 10.0), // Adjust the padding as needed
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 165.0),
              child: Text(
                'Party Members',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/you.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'John Doe',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image:
                                        AssetImage('assets/images/radiob.png')),
                              ),
                              Text(
                                'Admin',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 88.0),
                      child:
                          Image(image: AssetImage('assets/images/Adminc.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/arthur.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Freddi Markson',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image:
                                        AssetImage('assets/images/radiob.png')),
                              ),
                              Text(
                                'In Party',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child:
                          Image(image: AssetImage('assets/images/minus.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/romanov.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Romanov Fredy',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image:
                                        AssetImage('assets/images/radiob.png')),
                              ),
                              Text(
                                'In Party',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child:
                          Image(image: AssetImage('assets/images/minus.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/audrey.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 29.0),
                          child: Text(
                            'Audrey Max',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image:
                                        AssetImage('assets/images/radiob.png')),
                              ),
                              Text(
                                'In Party',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child:
                          Image(image: AssetImage('assets/images/minus.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '(View All)',
              style: TextStyle(
                  color: Color.fromARGB(255, 36, 189, 41),
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                'My Friends',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/audrey.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 29.0),
                          child: Text(
                            'Audrey Max',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image:
                                        AssetImage('assets/images/radiob.png')),
                              ),
                              Text(
                                'Avilable For Party',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child: Image(image: AssetImage('assets/images/plus.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/audrey.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 29.0),
                          child: Text(
                            'Audrey Max',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image:
                                        AssetImage('assets/images/radiob.png')),
                              ),
                              Text(
                                'Avilable For Party',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child: Image(image: AssetImage('assets/images/plus.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/audrey.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 29.0),
                          child: Text(
                            'Audrey Max',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image: AssetImage(
                                        'assets/images/radiooff.png')),
                              ),
                              Text(
                                'In Another Party',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child: Image(image: AssetImage('assets/images/plus.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/audrey.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 29.0),
                          child: Text(
                            'Audrey Max',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image:
                                        AssetImage('assets/images/radiob.png')),
                              ),
                              Text(
                                'Avilable For Party',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child: Image(image: AssetImage('assets/images/plus.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 320,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/audrey.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 29.0),
                          child: Text(
                            'Audrey Max',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                    height: 16,
                                    width: 16,
                                    image:
                                        AssetImage('assets/images/radiob.png')),
                              ),
                              Text(
                                'Avilable For Party',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child: Image(image: AssetImage('assets/images/plus.png')),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: 170,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 178, 136, 1),
                // border: Border.all(
                //   width: 1,
                // ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Invite Friends',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image(image: AssetImage('assets/images/addf.png')),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
