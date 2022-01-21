// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
       Container(
        margin: EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/phone.png'),
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

        CarouselSlider(items: [
                Container(
        margin: EdgeInsets.all(1.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(1.0),
         image : DecorationImage (
           image: ExactAssetImage('assets/images/bag.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
    Container(
        margin: EdgeInsets.all(1.0),
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
   // Slider options
       
        ],
         options :CarouselOptions(
         height: 180.0,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8
      ),
        )
        ]
      );}  
}
