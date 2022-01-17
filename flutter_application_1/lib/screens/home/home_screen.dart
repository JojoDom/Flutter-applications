// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage ({Key? key, required this.title}) : super (key: key);

final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text(title),
      backgroundColor : Colors.green,
        actions: <Widget>[
          IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
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
      body : ListView(
        children : [
          CarouselSlider(
            items: [
      // first image of Slider
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/new_arrival.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
   // second image of slider
    Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/new arrivals.jpg'),
           fit: BoxFit.cover,
         ),
        ),
      ),
// third image of slider
Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/black friday sales'),
           fit: BoxFit.cover,
         ),
        ),
      ),
// fourth image of slider
Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/flash sale.jpg'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      // fifth image
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/hair care.jpg'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      // sixth image
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/men fashion.jpg'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      // seventh image
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/women fashion.jpg'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      // eighth image
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/skin care.jpg'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      // ninth image
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/black friday sales.jpg'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      // last image
       Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/accessories.jpg'),
           fit: BoxFit.cover,
         ),
        ),
      ),
          ],
  // slider properties        
      options :CarouselOptions(
         height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8
      ),
          ) 
        ]
      ),
   drawer: Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: [
        const DrawerHeader(
        decoration: BoxDecoration(
        color: Colors.green
          ),
        child: Text('CATEGORIES'),
         ),
ListTile(
       title:  Text('Women Fashion'), 
       onTap:() {
         Navigator.pop(context);
       },
),
ListTile(
       title:  Text('Men Fashion'),
       onTap :() {
         Navigator.pop(context);
       },
),
ListTile(
       title:  Text('Kids Fashion'),
       onTap :() {
         Navigator.pop(context);
       },
),ListTile(
       title:  Text('Skin Care'),
       onTap :() {
         Navigator.pop(context);
       },
),
ListTile(
       title:  Text('Hair Care'),
       onTap :() {
         Navigator.pop(context);
       },
),
ListTile(
       title:  Text('Home Decor'),
       onTap :() {
         Navigator.pop(context);
       },
),
ListTile(
       title:  Text('Kitchen'),
       onTap :() {
         Navigator.pop(context);
       },
),

       ]

     )
    ));
  }
}