import 'package:flutter/material.dart';
import 'Categories/category_page.dart';
import 'Categories/my_cart_page.dart';
import 'Categories/productsList.dart';
import 'ContactUs/contact_us_page.dart';
import 'frontPage/front.dart';
import 'home/homeMain.dart';
import 'login/loginForm.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      routes: {
        //Route from one page to another
        '/': (ctx) => SplashScreen(),
        CategoryPage.routeName: (ctx) => const CategoryPage(),
        ProductList.routeName: (ctx) => ProductList()
      },
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selected = 0; //index of the selected button from the navigation bar

  static const List<Widget> _options = <Widget>[
    //List of the navigation bar classes(widgets)
    MyAppHome(),
    CategoryPage(),
    CartPage(),
    ContactUsPage()
  ];

  void _Tapped(int selected) {
    //function to change the index to desired index when a button pressed from tne navigation bar
    setState(() {
      _selected = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar code============================================================
        appBar: AppBar(
          backgroundColor: const Color(0xff1C4002),
          title: Image.asset(
            'lib/assets/images/logo.jpeg',
            height: 64.5,
          ),
          actions: <Widget>[
            IconButton(
                icon: Image.asset('lib/assets/images/profile.png'),
                //This section for the log in page which will be implemented later.......
                //this code only a transition to the next page
                tooltip: 'My Account',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (BuildContext context) {
                    return (MyAppLogin());
                  }));
                })
          ],
        ),
        //======================================================================
        body: Center(
          child: _options
              .elementAt(_selected), //displays the selected page in the center
        ),
        //Navigation bar code ==================================================
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Color(0xff1C4002),
                icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'MyCart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_support), label: 'Contact Us')
          ],
          currentIndex: _selected, //current page index
          selectedItemColor: Colors.yellow, //selected page icon will be yellow
          onTap: _Tapped, //call function _Tapped when other button tapped
        ));
  }
}
