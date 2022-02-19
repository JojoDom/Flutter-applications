import 'package:flutter/material.dart';

import 'package:flutter_application_1/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[

        GestureDetector(
          child:(
        buildOutlineButton(
          icon: Icons.remove,
          onTap: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        )) ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            onTap: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, required Null Function() onTap, }) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style:OutlinedButton.styleFrom(
padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        ),
        onPressed: (){},
        child: Icon(icon),
      ),
    );
  }
}
