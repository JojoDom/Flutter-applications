import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(title: const Text('Login'),
      backgroundColor:Colors.yellow[900]
      ),
    body:  SingleChildScrollView ( child : Form(
      key: _formKey,  
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Container(
             height: 250,
             width : width,
             decoration: const BoxDecoration(
               color:Colors.white24
             ),
             child :Center(
               child: Image.asset('assets/images/gold2.png')
             )
            ),
          
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              labelText : 'Email',
              floatingLabelBehavior:FloatingLabelBehavior.auto,
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              suffixIcon:const Icon(Icons.email),
            ),
             
             validator: (value) {  
       if (value!.isEmpty) {  
             return 'Please enter some text';  
       }  
       return null;  
},  
          ),

          const SizedBox(height:30.0),

          TextFormField(
            
            obscureText: true,
            decoration: InputDecoration(
              floatingLabelBehavior:FloatingLabelBehavior.auto,
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Password',
              suffixIcon: const Icon(Icons.visibility_off)
            ),
              validator: (value) {  
       if (value!.isEmpty) {  
             return 'Please enter password';  
       }  
       return null;
              }
          ),
              
              const SizedBox(height:30.0),
              ElevatedButton(
                         style: ElevatedButton.styleFrom(
                    
                    primary: Colors.yellow[900],
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
      borderRadius:  BorderRadius.circular(1.0),
    ),   
           ),
                
                onPressed: (){
                if (_formKey.currentState!.validate()) {  
                    // If the form is valid, display a Snackbar.  
                    ScaffoldMessenger.of(context)  
                        .showSnackBar(const SnackBar(content: Text('Logged In')));  
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const Home()));
                  }
              }, child: const Text('Login')),
        ],

      )
      
    )));
  }
}

