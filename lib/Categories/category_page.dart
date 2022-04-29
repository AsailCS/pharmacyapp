import 'package:flutter/material.dart';
import 'category_data.dart';
import 'category_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);
  static const routeName = '/CategoryPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C4002),
      body: Stack(children: <Widget>[
        const Padding(
            padding: EdgeInsets.all(18.9),
            child: Text(
              'Shop by Category',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        Container(
            padding: const EdgeInsets.only(top: 40.5),
            child: GridView(
              padding: const EdgeInsets.all(40),
              children: DATA
                  .map((data) => CategoryWidget(
                      data.id, data.title, data.color, data.icon))
                  .toList(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 20,
                maxCrossAxisExtent: 200,
              ),
            ))
      ]),
    );
  }
}
