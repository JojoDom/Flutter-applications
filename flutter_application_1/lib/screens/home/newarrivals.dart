// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, avoid_print 

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
      padding : EdgeInsets.all(2),
      height: 140,
      child : Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children : <Widget>[
            Image.asset('assets/images/'+ image),
            Expanded (
              child:Container(
                padding:EdgeInsets.all(2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children : <Widget>[
                    Text(
                      name , style:TextStyle(fontWeight:FontWeight.bold)),
                      Text(description),
                      Text('Price: GHS' + price.toString()), 
                      RatingBox(), 
                  ]
                )
              )
            )

          ],

        )

      )
    );
  
}}

// ignore: use_key_in_widget_constructors
class RatingBox extends StatefulWidget{
@override
_RatingBoxState createState() => _RatingBoxState();

}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  void _setRatingAsOne() {
setState( () {
_rating = 1;
});
}

void _setRatingAsTwo() {
setState( () {
_rating = 2;
});
}

void _setRatingAsThree() {
setState( () {
_rating = 3;
});
}


  // ignore: annotate_overrides
  Widget build(BuildContext context){
  double _size = 20;
  print(_rating);

  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisSize: MainAxisSize.min,

    children:<Widget> [
      Container(
        padding: EdgeInsets.all(0),  
          child: IconButton(
icon: (_rating >= 1 ? Icon(Icons.star, size: _size,) :
Icon(Icons.star_border, size: _size,)),
color: Colors.red[500],
onPressed : _setRatingAsOne,
iconSize: _size,
),

      ),
        Container(
        padding: EdgeInsets.all(0),
          child: IconButton(
icon: (_rating >= 2 ? Icon(Icons.star, size: _size,) :
Icon(Icons.star_border, size: _size,)),
color: Colors.red[500],
onPressed : _setRatingAsTwo,
iconSize: _size,
),
        ),

  Container(
        padding: EdgeInsets.all(0),
          child: IconButton(
icon: (_rating >= 3 ? Icon(Icons.star, size: _size,) :
Icon(Icons.star_border, size: _size,)),
color: Colors.red[500],
onPressed : _setRatingAsThree,
iconSize: _size,
),

      ),

      
 
    ]
  );
}
}

