// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewArrivals extends StatelessWidget{
const NewArrivals ({Key? key, required this.name, required this.price, required this.description, required this.image}) : super(key:key);

final String name;
final String description;
final String image;
final int price;

  @override
  Widget build(BuildContext context){
    return Container(
      padding : EdgeInsets.all(6),
      height: 120,
      child : Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children : <Widget>[
            Image.asset('assets/images/'+ image),
            Expanded (
              child:Container(
                padding:EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children : <Widget>[
                    Text(
                      name , style:TextStyle(fontWeight:FontWeight.bold)),
                      Text(description),
                      Text('Price: GHS' + price.toString()),  
                  ]
                )
              )
            )

          ],

        )

      )
    );
  
}}


