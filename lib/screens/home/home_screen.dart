// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/help.dart';
import 'package:flutter_application_1/screens/home/components/item_card.dart';
import 'package:flutter_application_1/screens/home/components/products.dart';
import 'package:flutter_application_1/screens/home/details/details_screen.dart';
import 'package:flutter_application_1/screens/home/profile.dart';
import 'package:flutter_application_1/constants.dart';

import  'package:flutter_application_1/screens/home/body.dart';
import 'package:flutter_application_1/screens/womenFashion/women_screen.dart';



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    static const List<Widget> _pages = <Widget>[
        MyHomePage(), Profile(), Help()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _pages.elementAt(_selectedIndex),  
   bottomNavigationBar: BottomNavigationBar(
   currentIndex: _selectedIndex,
  onTap: _onItemTapped,
  selectedFontSize: 20,
  selectedIconTheme: IconThemeData(size: 20),
  items :const <BottomNavigationBarItem> [
    BottomNavigationBarItem(
      icon:  Icon(Icons.home),
      label: 'Home',
     
    ),

    BottomNavigationBarItem(
      icon:  Icon(Icons.person),
      label: 'Profile',
    ),

    BottomNavigationBarItem(
      icon:  Icon( Icons.help_outline),
      label: 'Help',
    ),

  ],
  
), 
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    
        
return Scaffold (
        body: CustomScrollView(  
        slivers: [  
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: false,
          centerTitle: false,
          backgroundColor : Colors.orange,
          title:
         const Text('Ghana Mall', style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
          actions:[
              IconButton(
          icon: Icon(
            Icons.shopping_cart,
            // By default our  icon color is white
            color: Colors.white
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
        child: Center(child: Text('CATEGORIES', style: TextStyle(color:Colors.white)))
         ),
      ListTile(
       title:  Text('Women Fashion'), 
       trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
       onTap:() {
          Navigator.push(context, MaterialPageRoute(builder:(context)=> const WomenFashion ()),);
       },
          ),
       ListTile(
       title:  Text('Men Fashion'),
       trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
       onTap :() {
         Navigator.pop(context);
         
       },
        ),
       ListTile(
       title:  Text('Kids Fashion'),
       trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
       onTap :() {
         Navigator.pop(context);
       },
       ),    
       ListTile(
       title:  Text('Skin Care'),
       trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
       onTap :() {
         Navigator.pop(context);
       },
        ),
       ListTile(
       title:  Text('Hair Care'),
       trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
       onTap :() {
         Navigator.pop(context);
       },
         ),
      ListTile(
       title:  Text('Home Decor'),
       trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
       onTap :() {
         Navigator.pop(context);
       },
        ),
      ListTile(
       title:  Text('Kitchen'),
       trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
       onTap :() {
         Navigator.pop(context);
       },
        ),

       ]

     
)),


   
);
    
  }
   
}




  
     



        
      
 