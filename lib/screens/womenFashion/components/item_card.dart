import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/womenFashion/components/products.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  // ignore: prefer_typing_uninitialized_variables
  final press;
 // final Function press;
   const ItemCard({
    Key? key,
    required this.product, required this.press,
    //this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding:  const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              // products is out demo list
              product.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
