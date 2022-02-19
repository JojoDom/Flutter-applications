import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/womenFashion/components/products.dart';
import 'package:flutter_application_1/screens/womenFashion/details/details_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/screens/womenFashion/components/categories.dart';

import 'components/item_card.dart';

class WomenFashion extends StatelessWidget {
  const WomenFashion({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor : Colors.orange,
        actions: <Widget> [
          IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {}
          
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),

        ]
        
        ),
        
        body  : Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget> [
              Padding(
                 padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
              ),

             const Categories(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: GridView.builder(
                     itemCount: products.length,
                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                ),

              itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    ))

                  )
                )
            ]

          ),
         
      
    );
  }
}