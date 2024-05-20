import 'package:eataly/MenuSectionScreens/AddToCartPage.dart';
import 'package:eataly/Provider/AddToCartProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuSelectionScreen extends StatefulWidget {
  const MenuSelectionScreen({super.key});

  @override
  State<MenuSelectionScreen> createState() => _MenuSelectionScreenState();
}

class _MenuSelectionScreenState extends State<MenuSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Selection'),
        actions: [
          Consumer<AddToCartProvider>(
            builder: (context, cart, child) {
              return Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addtocartpage()));
                    },
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        '${cart.itemCount}', // Display item count
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 230.0),
              child: Text(
                'Menu',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            _buildMenuItem(
              context,
              'assets/images/menu1.png',
              'Caprese Salad',
              'Tomato, Mozzarella, Basil',
              'basil, balsamic glaze',
              '\$200',
            ),
            SizedBox(
              height: 10.0,
            ),
            _buildMenuItem(
              context,
              'assets/images/menu1.png',
              'Caprese Salad',
              'Tomato, Mozzarella, Basil',
              'basil, balsamic glaze',
              '\$200',
            ),
            SizedBox(
              height: 10.0,
            ),
            _buildMenuItem(
              context,
              'assets/images/menu1.png',
              'Caprese Salad',
              'Tomato, Mozzarella, Basil',
              'basil, balsamic glaze',
              '\$200',
            ),
            SizedBox(
              height: 10.0,
            ),
            _buildMenuItem(
              context,
              'assets/images/menu1.png',
              'Caprese Salad',
              'Tomato, Mozzarella, Basil',
              'basil, balsamic glaze',
              '\$200',
            ),
            SizedBox(
              height: 10.0,
            ),
            _buildMenuItem(
              context,
              'assets/images/menu1.png',
              'Caprese Salad',
              'Tomato, Mozzarella, Basil',
              'basil, balsamic glaze',
              '\$200',
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Addtocartpage()));
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
                    'Proceed To Checkout',
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
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String imagePath, String title,
      String subtitle1, String subtitle2, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Container(
        height: 110.0,
        width: 335,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 206, 205, 205),
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 110.0,
              height: 110.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle1,
                      style: TextStyle(
                          color: Color.fromARGB(255, 185, 185, 185),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle2,
                      style: TextStyle(
                          color: Color.fromARGB(255, 185, 185, 185),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          'Starting From ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 185, 185, 185),
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          price,
                          style: TextStyle(
                              color: Color.fromARGB(255, 57, 57, 57),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Provider.of<AddToCartProvider>(context,
                                    listen: false)
                                .removeItem(title);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 144, 84),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 15.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.0, right: 9.0),
                          child: Consumer<AddToCartProvider>(
                            builder: (context, cart, child) {
                              return Text(
                                  '${cart.items.where((item) => item == title).length}');
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Provider.of<AddToCartProvider>(context,
                                    listen: false)
                                .addItem(title);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 144, 84),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
