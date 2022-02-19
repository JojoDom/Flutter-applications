// ignore_for_file: unused_field

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpDetails extends StatefulWidget {
  const SignUpDetails({ Key? key }) : super(key: key);

  @override
  _SignUpDetailsState createState() => _SignUpDetailsState();
}



class _SignUpDetailsState extends State<SignUpDetails> {
  
  final _formKey = GlobalKey<FormState>();
    String _password = '';
    String _confirmPassword = '';
    String _username = '';
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;   
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account'),
        backgroundColor:Colors.yellow[900]
      ),
    body: SingleChildScrollView( 
      child: Form(
           key: _formKey,  
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
  Container(
             height: 160,
             width : width,
             decoration: const BoxDecoration(
               color:Colors.white24
             ),
  ),

         TextFormField(
             
           inputFormatters:  [
             FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'), allow:true)
           ],
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Username',
              floatingLabelBehavior:FloatingLabelBehavior.auto,
              suffixIcon: const Icon(Icons.person),
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),  
            ),
               validator: (text) {  
       if (text==null||text.isEmpty) {  
             return 'This field is required';  
       } 
      
       return null;
      
              },
              onChanged: (text) => _username = text,
          ),
         const SizedBox(height:5.0),

          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration:  InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Email',
               floatingLabelBehavior:FloatingLabelBehavior.auto,
              // ignore: prefer_const_constructors
              suffixIcon: Icon(Icons.email),
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              
            ),

               validator: (email){
                  if(email!.isEmpty){
                   return "This field is required";}

                  if(!EmailValidator.validate(email, false)){
                       return  "Invalid Email Address";}
      
                     return null;
               }    
          ),
         
        const SizedBox(height: 5.0,),
          // Password
           TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Password',
               floatingLabelBehavior:FloatingLabelBehavior.auto,
              helperText: '   Length must be at least 8\n   must have at least 1 uppercase\n   must have at least one lower case\n   must have at least one special character eg @%\$ ',
              
              // ignore: prefer_const_constructors
              suffixIcon: Icon(Icons.visibility_off),
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
               validator: (value) {

                 RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')  ;
       if (value!.isEmpty) {  
             return 'This field is required';  
       }      
        if (!regex.hasMatch(value)){
          return '   Enter valid password\n   Length must be at least 8\n   must have at least 1 uppercase\n   must have at least one lower case\n   must have at least one special character eg @%\$ ';
        }
       return null;
        },
          onChanged: (value) => _password = value,   
          ),
        //Confirm Password
          const SizedBox(height:5.0 ,),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              labelText :'Confirm Password',
               floatingLabelBehavior:FloatingLabelBehavior.auto,
              suffixIcon: const Icon(Icons.visibility_off),
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),

            ),
               validator: (value) {  
                if(value!.isEmpty){
             return "This field is required";
             } 
             if (value != _password){
               return 'Password does not match';
             }
             return null;
             },
             onChanged: (value) => _confirmPassword = value,
          
          ),
          // SignUp Button
       ElevatedButton(
         style: ElevatedButton.styleFrom(
                    //padding: const EdgeInsets.all(20),
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
                        .showSnackBar(const SnackBar(content: Text('Account Created')));  
                 Navigator.pop(context);
                  }  
         
       }, child: const Text('Create Account'))
        ]
      
    ))));
  }
}


