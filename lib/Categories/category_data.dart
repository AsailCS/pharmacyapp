import 'package:flutter/material.dart';
import 'product.dart';
import 'category.dart';

const DATA = [
  Category(
      id: 'c1',
      title: 'Covid-19 Section',
      color: Color(0xff1C4002),
      icon: 'lib/assets/images/cv.png'),
  Category(
      id: 'c2',
      title: 'Multivitamins & Supplements',
      color: Color(0xff1C4002),
      icon: 'lib/assets/images/ms.png'),
  Category(
      id: 'c3',
      title: 'Baby Care & Food',
      color: Color(0xff1C4002),
      icon: 'lib/assets/images/bc.png'),
  Category(
      id: 'c4',
      title: 'Skin Care',
      color: Color(0xff1C4002),
      icon: 'lib/assets/images/sc.png'),
  Category(
      id: 'c5',
      title: 'Health & Medicine',
      color: Color(0xff1C4002),
      icon: 'lib/assets/images/hm.png'),
  Category(
      id: 'c6',
      title: 'Personal Hygiene',
      color: Color(0xff1C4002),
      icon: 'lib/assets/images/hp.png'),
];

final PRODUCTS = [
  Product(
      id: 'p1',
      category: 'c1',
      pName: 'Hand Sanitizer',
      price: 1.500,
      stock: 5,
      image: 'lib/assets/images/sani.jpg'),
  Product(
      id: 'p2',
      category: 'c1',
      pName: 'Face Masks/ 20pcs',
      price: 6.200,
      stock: 5,
      image: 'lib/assets/images/face.jpg'),
  Product(
      id: 'p3',
      category: 'c1',
      pName: 'Sanitizing Wet Wipes',
      price: 6.250,
      stock: 5,
      image: 'lib/assets/images/p3.jpg'),
  Product(
      id: 'p4',
      category: 'c1',
      pName: 'Spray Hand Sanitizer',
      price: 5.500,
      stock: 5,
      image: 'lib/assets/images/hands.jpg'),
  Product(
      id: 'p5',
      category: 'c1',
      pName: 'Face Masks 50/pcs',
      price: 5.500,
      stock: 5,
      image: 'lib/assets/images/mask.jpg'),
  Product(
      id: 'p6',
      category: 'c1',
      pName: 'Covid-19 Self-test/ 2 tests',
      price: 10.000,
      stock: 5,
      image: 'lib/assets/images/ccv.jpg'),
];

var myCart = [];
