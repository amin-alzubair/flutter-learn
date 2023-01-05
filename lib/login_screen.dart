import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
var email = TextEditingController();
var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,

               children: [
                 Text('Login', style: TextStyle(
                   fontSize: 30.0,
                   fontWeight: FontWeight.bold
                 ),),
                 SizedBox(
                   height: 40.0,
                 ),
                 TextFormField(
                   controller: email,
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     labelText: 'Enter your email',
                     border: OutlineInputBorder(),
                     prefixIcon: Icon(Icons.email)
                   ),
                 ),
                 SizedBox(
                   height: 15.0,
                 ),
                 TextFormField(
                   controller: password,
                   keyboardType: TextInputType.visiblePassword,
                   obscureText: true,

                   decoration: InputDecoration(
                       labelText: 'Enter your password',
                       border: OutlineInputBorder(),
                       prefixIcon: Icon(Icons.lock),
                     suffixIcon: Icon(Icons.remove_red_eye_rounded)
                   ),
                 ),
                 SizedBox(
                   height: 20.0,
                 ),
                 Container(
                   color: Colors.blue,
                   width: double.infinity,

                   child: MaterialButton(
                       child: Text('LOGIN',style: TextStyle(color: Colors.white),),
                       onPressed: (){
                         print(email.text);
                         print(password.text);
                       }),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Don\' You have acount ? '),
                     TextButton(onPressed: (){}, child: Text('Register Now')),
                   ],
                 ),


               ],
             ),
           ),
         ),
       ),
    );
  }
}
