import 'package:categories/Categories/product_widget.dart';
import 'package:flutter/material.dart';
import 'category_data.dart';

class ProductList extends StatelessWidget {
  static const routeName = '/productsList';

  @override
  Widget build(BuildContext context) {
    final Args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final catName = Args['title'];
    final catId = Args['id'];
    final products = PRODUCTS.where((pd) {
      return pd.category == catId;
    }).toList();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1C4002),
          title: Text(
            catName!,
            style: const TextStyle(fontFamily: 'Roboto'),
          ),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductWidget(
                id: products[index].id,
                cat: products[index].category,
                pname: products[index].pName,
                prc: products[index].price,
                stk: products[index].stock,
                img: products[index].image);
          },
        ));
  }
}
