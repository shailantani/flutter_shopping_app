import 'package:flutter/material.dart';

class Product {
  final String id, name, description, category;
  final Image image;
  final num price;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    required this.category,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: "TSHIRT458",
      price: 2499.0,
      name: "Tshirt",
      description:
          "A T-shirt (also spelled tee shirt), or tee, is a style of fabric shirt named after the T shape of its body and sleeves.",
      category: "entertainment, leisure, clothing, shopper's choice",
      color: Color.fromARGB(255, 132, 47, 47),
      image: Image.network(
          'https://media.istockphRoto.com/id/1354031012/photo/red-t-shirt-mockup-men-as-design-template-tee-shirt-blank-isolated-on-white-front-view.jpg?b=1&s=170667a&w=0&k=20&c=NTyAiI0Xg191ROqg0DnkfJBdi3sliE8Cj5Sxv8LTdzQ=')),
  Product(
      id: "SHIRT45678",
      price: 2499.0,
      name: "T-Shirt (Navy Blue)",
      description:
          "A T-shirt (also spelled tee shirt), or tee, is a style of fabric shirt named after the T shape of its body and sleeves.",
      category: "entertainment, leisure, clothing",
      color: Color(0xFF3D82AE),
      image: Image.network(
          'https://media.istockphoto.com/id/1328049157/photo/mens-short-sleeve-t-shirt-mockup-in-front-and-back-views.jpg?b=1&s=170667a&w=0&k=20&c=CZ5Emlrh-C4jzojJ8b8YBy1frxpQr6aMcLmEBrkty7Q=')),
  Product(
      id: "HEAD1234",
      price: 1499.0,
      name: "Headphones",
      description:
          "Headphones are a pair of padded speakers which you wear over your ears in order to listen to a radio or recorded music, or for using a phone without other people hearing it.",
      category: "entertainment, leisure",
      color: Color.fromARGB(255, 15, 14, 14),
      image: Image.network(
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhZHBob25lc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')),
  Product(
      id: "SRMKZILLA342",
      price: 9999999.0,
      name: "SRMKZILLA T-shirt",
      description:
          "SRMKZILLA is a community of young tech enthusiasts who eat, sleep and breath technology.",
      category: "fun, coding, mozohack, mozofest",
      color: Color.fromARGB(255, 205, 201, 201),
      image: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUcbhFxPGBVieygBEXonHsxawi8VLRcfmm6A&usqp=CAU')),
];
