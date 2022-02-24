import 'package:flutter/material.dart';


class Help extends StatelessWidget {
  const Help({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body : CustomScrollView(
       slivers:[
         const SliverAppBar(
           floating: true,
          pinned: true,
          snap: false,
          centerTitle: false,
          backgroundColor: Colors.orange, 
          title: Text('Help', style:TextStyle(color:Colors.white, fontWeight:FontWeight.bold)),
         ),
         
         SliverList(
           delegate:
           SliverChildListDelegate([
            const HelpScreen()
           ])
         )
        
       ]
     )
    );
  }
}
 class HelpScreen extends StatelessWidget {
   const HelpScreen({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Container(
       decoration: const BoxDecoration(
         color: Colors.white10
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children : <Widget>[
           const Padding(
             padding: EdgeInsets.all(20.0),
             child : Text('About Ghana Mall', style: TextStyle(color: Color(0xFF535353),
             fontSize:18.0, fontWeight: FontWeight.bold
             
             ),)
           
           ),
           Container(
             padding: const EdgeInsets.all(40.0),
             decoration: const BoxDecoration(
               color :Colors.white
             ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 InkWell(
                   splashColor: Colors.orange[100],
                   child:
                 ListTile (
                  title: const Text('Ghana Mall Services'),
                  onTap:(){ },
                  trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
                  ) ),


                  ListTile (
                  title: const Text('Faq'),
                  onTap:(){},
                  trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
                selectedTileColor: Colors.orange,
                 ),

                  ListTile (
                  title: const Text('Contact us'),
                  onTap:(){},
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
             child : Text(' Settings', style: TextStyle(color: Color(0xFF535353), fontSize:18.0,
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
                  title: const Text('Country'),
                  onTap:(){},
                  trailing : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.orange 
                ),
                selectedTileColor: Colors.orange,
                 ),
                 ListTile (
                  title: const Text('Language'),
                  onTap:(){},
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