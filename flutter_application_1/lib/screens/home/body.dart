// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/screens/home/newarrivals.dart';
class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context){
return ListView(
 children : [
   CarouselSlider(
            items: [
      // first image of Slider
                Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/new arrivals1.png'),
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
           image: ExactAssetImage('assets/images/black friday sales.png'),
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
           image: ExactAssetImage('assets/images/men fashion.png'),
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
           image: ExactAssetImage('assets/images/women fashion.png'),
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
           image: ExactAssetImage('assets/images/skin care.png'),
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
           image: ExactAssetImage('assets/images/accessories.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
           Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/bags.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
       
      
          ],
        // slider properties        
         options :CarouselOptions(
         height: 120.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                viewportFraction: 0.8
      ),
          ), 
   const Divider(),
   ListTile(
       title:  Text('DEALS OF THE DAY 50% OFF!!',
        style: TextStyle(
          color: Colors.red,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ), 
          )
          ),

   CarouselSlider(
     items: [
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/bag.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/blender.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),

      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/IPONE 13.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/McBook.png'),
           fit: BoxFit.cover,
         ),
        ),
      ), 
      ],
      options :CarouselOptions(
         height: 250.0,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8
                ),
                ),
   
    ListTile(
       title:  Text('NEW ARRIVALS',
        style: TextStyle(
          color: Colors.red,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ), 
          )
          ),
  
   NewArrivals(
     name: 'Bag',
     description: 'SKU leather bags for ladies.',
     price : 80,
     image : 'bag_1.png'
   ),
   NewArrivals(
     name: 'Bag',
     description: 'SKU leather bags for ladies.',
     price : 100,
     image : 'bag_2.png'
   ),
   NewArrivals(
     name: 'Bag',
     description: 'SKU leather bags for ladies.',
     price : 150,
     image : 'bag_3.png'
   ),
   NewArrivals(
     name: 'Bag',
     description: 'Women fashionable travelling bag.',
     price : 120,
     image : 'bag_4.png'
   ),
   NewArrivals(
     name: 'Bag',
     description: 'SKU leather bags for ladies.',
     price : 200,
     image : 'bag_5.png'
   ),

  
  
  ]  
);  

}}

