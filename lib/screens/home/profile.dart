import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/UserProfile/sign_up.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body : CustomScrollView(
       slivers:[
         SliverAppBar(
           floating: true,
          pinned: true,
          snap: false,
          centerTitle: false,
          backgroundColor: Colors.orange, 
          title: const Text('Account', style:TextStyle(color:Colors.white, fontWeight:FontWeight.bold)),

          bottom: AppBar(
            backgroundColor: Colors.orange,
            title: const Text.rich(
              TextSpan(
                text : 'Welcome!\n', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                  children:[
                     TextSpan(text: 'Enter your account', style:TextStyle(color:Colors.white))
                  ]
              )
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child:
              ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder:(context)=> const SignUpPage()),);
              }, 
              child: const Text('Login', style: TextStyle(color:Colors.orange),),
              style: ElevatedButton.styleFrom(
                    //padding: const EdgeInsets.all(20),
                    primary: Colors.white
           ),
              
              )
              )
            ],
          )
         ),
         SliverList(
           delegate:
           SliverChildListDelegate([
            const ProfileScreen()
           ])
         )
         
      
       ]
     )
    );
  }
}
 class ProfileScreen extends StatelessWidget {
   const ProfileScreen({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Container(
       decoration: const BoxDecoration(
         color: Colors.white10
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children : <Widget>[
           const Padding(
             padding: EdgeInsets.all(20.0),
             child : Text('My Account', style: TextStyle(color: Color(0xFF535353),
             fontSize:18.0, fontWeight: FontWeight.bold
             
             ),)
           
           ),
           Container(
             padding: const EdgeInsets.all(40.0),
             decoration: const BoxDecoration(
               color :Colors.white
             ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(
                   splashColor: Colors.orange[100],
                   child:
                 ListTile (
                  title: const Text('Orders'),
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=> const SignUpPage()),); },
                  leading: const Icon(Icons.shopping_cart, color: Colors.orange),
                  trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
                  ) ),


                  ListTile (
                  title: const Text('Inbox'),
                  onTap:(){},
                  leading : const Icon(Icons.email, color: Colors.orange,),
                  trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
                selectedTileColor: Colors.orange,
                 ),
                  ListTile (
                  title: const Text('Saved Items'),
                  onTap:(){},
                  leading : const Icon(Icons.favorite, color : Colors.orange),
                  trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
                selectedTileColor: Colors.orange,
                 ),
                   
                   ListTile (
                  title: const Text('Recently Searched'),
                  onTap:(){},
                  leading: const Icon(Icons.saved_search, color:Colors.orange),
                  trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
                selectedTileColor: Colors.orange,

                 ),
                 
               ],
             )
           ),
          const Padding (
             padding: EdgeInsets.all(20.0),
             child : Text('My Settings', style: TextStyle(color: Color(0xFF535353), fontSize:18.0,
             fontWeight: FontWeight.bold
             ),)
           ),

                      Container(
             padding: const EdgeInsets.all(40.0),
             decoration: const BoxDecoration(
               color :Colors.white
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ListTile (
                  title: const Text('Account Settings'),
                  onTap:(){},
                  leading: const Icon(Icons.settings, color:Colors.orange),
                  trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
                selectedTileColor: Colors.orange,
                 ),
            
               ],
             )
           ),
         ]
       ),
     );
   }
 }