// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/components/item_card.dart';
import 'package:flutter_application_1/screens/home/components/products.dart';
import 'package:flutter_application_1/screens/home/details/details_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/constants.dart';

import  'package:flutter_application_1/screens/home/body.dart';
import 'package:flutter_application_1/screens/womenFashion/women_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage ({Key? key, required this.title}) : super (key: key);

final String title;

  @override
  Widget build(BuildContext context) {
return Scaffold (
        body: CustomScrollView(
        slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: false,
          centerTitle: false,
          backgroundColor : Colors.green,
          title:
         const Text('Ghana Mall'),
             actions:[
              IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ), 
             ],
             bottom: AppBar( 
               
               automaticallyImplyLeading: false,
               title: Container(
                 height: 40,
                 width: double.infinity,
                 color: Colors.white,
                 child: const TextField(
                   
                   decoration: InputDecoration( 
                      
                     hintText: 'Search',
                     prefixIcon : Icon(Icons.search),
                   )
                 )
               )
             )
         ),
         SliverList(
           delegate: 
           SliverChildListDelegate([
             const Body(), 
           ])
           ),
           SliverGrid(
             
           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding/2,
                  crossAxisSpacing: kDefaultPadding/2,
                  childAspectRatio: 0.80,

            ),
            delegate: 
            SliverChildBuilderDelegate(
              (BuildContext context, index) { 
                return Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
              child:  ItemCard(
                 product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
              ) );
            
              },
              childCount: products.length
           )
           )],
    ),  
drawer: Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: [
        const DrawerHeader(
        decoration: BoxDecoration(
        color: Colors.orange
          ),
        child: Text('CATEGORIES'),
         ),
      ListTile(
       title:  Text('Women Fashion'), 
       onTap:() {
          Navigator.push(context, MaterialPageRoute(builder:(context)=> const WomenFashion ()),);
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
       ),    
       ListTile(
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

     
)));
  }
}

  
     



        
      
 