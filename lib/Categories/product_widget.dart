import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_data.dart';

class ProductWidget extends StatelessWidget {
  final String id;
  final String cat;
  final String pname;
  final double prc;
  final int stk;
  final String img;

  ProductWidget(
      {required this.id,
      required this.cat,
      required this.pname,
      required this.prc,
      required this.stk,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 100,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: <Widget>[
                Expanded(child: Image.asset(img)),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      pname,
                      style: const TextStyle(
                          fontFamily: 'Roboto-bold', fontSize: 14),
                    ),
                    Text(
                      'OMR $prc',
                      style: const TextStyle(
                          fontFamily: 'Roboto-bold',
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
                Expanded(
                    child: IconButton(
                  icon: Image.asset('lib/assets/images/add.png'),
                  tooltip: 'Add to MyCart',
                  onPressed: () {
                    myCart.add(id);
                  },
                ))
              ],
            ),
          )),
    );
  }
}
