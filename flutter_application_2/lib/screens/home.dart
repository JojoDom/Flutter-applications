// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  const Home({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading:false,
        elevation:0,
        toolbarHeight: 5.0,
        
      ),
      body: Container(
         padding: const EdgeInsets.all(20.0),
           height: height,
           width: width,
           decoration:const BoxDecoration(color: Colors.grey),
         
         child :Container(
          
           decoration: const BoxDecoration(color: Colors.white),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             
             children:<Widget>[
                 Container( 
                   padding: const EdgeInsets.only(top:60, bottom: 10),
                   child: const Center(child:Text('Sign In', style:TextStyle(color:Colors.black, fontSize:25.0, fontWeight:FontWeight.normal)))),
                const Text('Sign in with your social media account', style: TextStyle(color: Colors.grey,fontSize:15.0,fontWeight: FontWeight.normal)),

                 Container(
                   padding: const EdgeInsets.all(20.0),
                   child: Row(
                       mainAxisAlignment:MainAxisAlignment.center,
                     children:const <Widget>[
                         Text('facebook'),
                        Text('google'),
                         Text('twitter')
                   ],)
                 ),
                 Expanded(child: 
                 Container(
                  padding: const EdgeInsets.all(20),
                   child:Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children: <Widget>[
                            TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              labelText : 'Email',
              floatingLabelBehavior:FloatingLabelBehavior.auto,
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              suffixIcon:const Icon(Icons.email),
            ),
             ),
              TextFormField(
            
            obscureText: true,
            decoration: InputDecoration(
              floatingLabelBehavior:FloatingLabelBehavior.auto,
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Password',
              suffixIcon: const Icon(Icons.visibility_off)
            ),
             
          ),
           ElevatedButton(
                         style: ElevatedButton.styleFrom(
                    
                    primary: Colors.yellow[900],
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
      borderRadius:  BorderRadius.circular(8.0),
    ),   
           ),
                
                onPressed: (){ Navigator.pop(context); },
               child: const Text('Login')),
                     ],
                   )
                 )
                 ),

                 const SizedBox(height:50.0),

                 GestureDetector(
                   
                 )

                 
             ]
           )


      ))
        
      
    );
  }
}
