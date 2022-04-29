import 'package:categories/Categories/productsList.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String icon;

  CategoryWidget(this.id, this.title, this.color, this.icon);

  void selectCategory(BuildContext cont) {
    Navigator.of(cont).pushNamed(
      ProductList.routeName,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //borderRadius: BorderRadius.circular(24),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 2.0)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontFamily: 'Roboto-bold', color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Expanded(child: Image.asset(icon))
            ],
          )),
      onTap: () => selectCategory(context),
    );
  }
}
