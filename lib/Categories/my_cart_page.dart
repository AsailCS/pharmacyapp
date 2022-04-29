import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  static const routeName = '/CategoryPage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xff1C4002),
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Cart:",
                  style: TextStyle(
                    fontFamily: 'Roboto-bold',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: const <Widget>[
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      "Delete all",
                      style: TextStyle(
                        fontFamily: 'Roboto-bold',
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                const Image(
                  image: AssetImage("assets/images/cart_pic1.png"),
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.radio_button_unchecked,
                      color: Colors.amber,
                      size: 30,
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[300]),
                        padding: const EdgeInsets.all(10),
                        child: const Image(
                          image: AssetImage('lib/assets/Images/cart_pic1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const <Widget>[
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.radio_button_checked,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      "Select all",
                      style: TextStyle(
                        fontFamily: 'Roboto-bold',
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Total Prise: 0.000 OR",
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    fontFamily: 'Roboto-bold',
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: const TextButton(
                    onPressed: null,
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        fontFamily: 'Roboto-bold',
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
