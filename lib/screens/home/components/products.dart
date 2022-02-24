import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "ladies Dress",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dress_1.png",
      color: Colors.red
  ),
  Product(
      id: 3,
      title: "Ladies flat shoe",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/shoe_1.png",
      color: Colors.blue ),
  Product(
      id: 4,
      title: "Cross back bag",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A984)
  ), 
  Product(
      id: 5,
      title: "Petty coat",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dress_2.png",
      color: Colors.grey ),

  Product(
    id: 6,
    title: "Men shoes",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/shoe_2.png",
    color: Colors.brown,
  ),
   Product(
    id: 7,
    title: "Bag",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_3.png",
    color: const Color(0xFF989493)),
     
  
   Product(
    id: 8,
    title: "Men office wear",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/dress_3.png",
    color: const Color(0xFFAEAEAE),
  ),
   Product(
    id: 9,
    title: "Men Shoes",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/shoe_3.png",
    color: Colors.brown
  ),
   Product(
    id: 10,
    title: "Travel bag",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_4.png",
    color: const Color(0xFFE6B398)
  ),
   Product(
    id: 11,
    title: "Sweat top",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/dress_4.png",
    color: Colors.red,
  ),
   Product(
    id: 12,
    title: "Ladies heels",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/shoe_4.png",
    color: Colors.yellow
  ),
   Product(
    id: 13,
    title: "Ladies bag",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_5.png",
    color: const Color(0xFFFB7883)),
  
   Product(
    id: 14,
    title: "Laptop Bag",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
     color: const Color(0xFFAEAEAE),
  ),
   Product(
    id: 16,
    title: "Ladies heels",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/shoe_5.png",
    color: Colors.black,

  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
