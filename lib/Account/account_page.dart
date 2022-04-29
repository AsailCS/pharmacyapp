import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  static const routeName = '/CategoryPage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xff1C4002),
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xff1C4002),
              backgroundImage: AssetImage("assets/images/account_pic1.png"),
              radius: 120,
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              //color: Colors.grey[900],
              // shape: RoundedRectangleBorder(
              //   side: BorderSide(color: Colors.white70, width: 1),
              //   borderRadius: BorderRadius.circular(10),
              // ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.amber,
                ),
                title: Text(
                  'User account',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.amber,
                ),
                title: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
