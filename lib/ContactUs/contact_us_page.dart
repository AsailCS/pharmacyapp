import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);
  static const routeName = '/CategoryPage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xff1C4002),
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                const Image(
                  image: AssetImage('lib/assets/images/contact_pic1.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'GET IN TOUCH',
                      style: TextStyle(
                        fontFamily: 'Roboto-bold',
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(),
                    Text(
                      'Always with in your !',
                      style: TextStyle(
                        fontFamily: 'Roboto-bold',
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //Phone box
            Stack(
              children: <Widget>[
                const Image(
                  image: AssetImage("lib/assets/images/contact_pic6.png"),
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage("lib/assets/images/contact_pic2.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "+ 986 9876 5432",
                      style: TextStyle(
                        fontFamily: 'Roboto-bold',
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
            //Email box
            Stack(
              children: <Widget>[
                const Image(
                  image: AssetImage("lib/assets/images/contact_pic7.png"),
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage("lib/assets/images/contact_pic3.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Pharmacy_Express@gmail.com",
                      style: TextStyle(
                        fontFamily: 'Roboto-bold',
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
            //location box
            Stack(
              children: <Widget>[
                const Image(
                  image: AssetImage("lib/assets/images/contact_pic8.png"),
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage("lib/assets/images/contact_pic4.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Oman / Muscat / Alkohude",
                      style: TextStyle(
                        fontFamily: 'Roboto-bold',
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
