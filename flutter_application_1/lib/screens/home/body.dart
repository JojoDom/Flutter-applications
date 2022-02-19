// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context){
return Column(
  mainAxisAlignment : MainAxisAlignment.center,
  children:<Widget>[
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
          Padding(
           padding:  EdgeInsets.all(40.0),
           child : Text('All Products')
        ), 
  ]
); 


}}

