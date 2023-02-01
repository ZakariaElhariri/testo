import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.grey[500],
            size: 15,
            ),
            
            const Expanded(
              child: Text("Sign Up",
              textAlign: TextAlign.center,
                style:TextStyle(
                  color: Color.fromARGB(220, 167, 164, 164),
                  fontSize: 18,
                  fontFamily:"Muli",
                  fontWeight: FontWeight.w500,
                  ),
              ),
            )
          ],
        ),

        SizedBox(height:45),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(width:20),
         const Text("Register Account",
                  textAlign: TextAlign.center,
                    style:TextStyle(
                      color: Color.fromARGB(220, 0, 0, 0),
                      fontSize: 32,
                      fontFamily:"Muli",
                      fontWeight: FontWeight.w700,
                      ),
                  ),
          ],
        ),
        SizedBox(height:16),
        const  Text("Complete your details or continue",
               textAlign: TextAlign.center,
                 style:TextStyle(
                   color: Color.fromARGB(220, 167, 164, 164),
                   fontSize: 15,
                   fontFamily:"Muli",
                   fontWeight: FontWeight.w100,
                   ),
               ),
           
            
            const  Text("with social media .",
             textAlign: TextAlign.center,
               style:TextStyle(
                 color: Color.fromARGB(220, 167, 164, 164),
                 fontSize: 15,
                 fontFamily:"Muli",
                 fontWeight: FontWeight.w100,
                 ),
             ),
             SizedBox(height: 40,),
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email",
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
             SizedBox(height: 20,),
               TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.lock_outline_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
               TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.lock_outline_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
             
             SizedBox(height:7,),
             
             SizedBox(height: 56,),
             SizedBox(
              width:double.infinity,
               child: TextButton(onPressed: (){}, child: Text("Continue"),
                style: TextButton.styleFrom(
                backgroundColor: Colors.orange[800],
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize:25,),
                padding:  EdgeInsets.fromLTRB(0, 22, 0, 22),
                shape: StadiumBorder() ,
                  ),
                ),
             ),
             SizedBox(height:30),
             Padding(
              padding:EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 100,
              ),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               
                children: [
                  Container(
                    
                    width: 40,
                    height: 40,
                    //child: ,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: SvgPicture.asset("assets/images/icons8-google.svg"),
                  ),
                  Container(
                    
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    //child: ,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: SvgPicture.asset("assets/images/icons8-facebook.svg"),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    //child: ,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: SvgPicture.asset("assets/images/icons8-twitter.svg"),
                  ),
                ],
               ),
             ),
             SizedBox(height: 20,),
             Column(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const  Text("By continuing you confirm that you agree",
                   textAlign: TextAlign.center,
                     style:TextStyle(
                       color: Color.fromARGB(220, 167, 164, 164),
                       fontSize: 15,
                       fontFamily:"Muli",
                       fontWeight: FontWeight.w100,
                       ),
                   ),
                   const  Text("with our Terms and Conditions",
                   textAlign: TextAlign.center,
                     style:TextStyle(
                       color: Color.fromARGB(220, 167, 164, 164),
                       fontSize: 15,
                       fontFamily:"Muli",
                       fontWeight: FontWeight.w100,
                       ),
                   ),
               ],
             ),
               
               
           
            
          
      ],
    );;
  }
}