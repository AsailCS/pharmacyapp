
import 'package:flutter/cupertino.dart';

class Product{
  final String id;
  final String category;
  final String pName;
  final double price;
  final int stock;
  final String image;

  Product({
    required this.id,
    required this.category,
    required this.pName,
    required this.price,
    required this.stock,
    required this.image
  });
}