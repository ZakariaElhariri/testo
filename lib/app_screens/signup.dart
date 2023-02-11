import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}
  String? email;
  String? password;
  String? cpassword;
  String? matched_passwords="";
class _signup_screenState extends State<signup_screen> {

  
  var Formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: Formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
            
                      IconButton(
                  onPressed: () {
                  Navigator.pop(context);
                  },
                  icon: Icon(
                    
                  Icons.arrow_back_ios_rounded,
                  color: Colors.grey[500],
                  size: 15,
                  ),
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
            
                  SizedBox(height:35),
                  
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
                          onSaved: (String? v1){
                            email=v1;
                          },
                            validator: (String? value)//value is what is typed in the text box  
                            { 
                                final bool emailValid = 
                                  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!);
                                if(value.length==0) return "Email Required";
                                else if(!emailValid)return "Email is not valid";
                                else return null;
            
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 26,),
                              labelText: "Email",
                              hintText: "Enter your email",
                              suffixIcon: const Icon(Icons.email_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                       SizedBox(height: 20,),
                         TextFormField(
                          onSaved: (String? v1){
                            password=v1;
                          },
                          validator: (String? value)
                            {   //if(password==cpassword)
                                return alpha_num(value!);
                            },
                            obscureText: false,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 26,),
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
                          onSaved: (String? v1){
                            cpassword=v1;
                          },
                          validator: (String? value)
                            { 
                                return alpha_num(value!);
                            },
                            obscureText: false,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 26,),
                              labelText: "Confirm Password",
                              hintText: "Enter your password confirmation",
                              suffixIcon: Icon(Icons.lock_outline_rounded),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                       
                       SizedBox(height:7,),
                       Text("${matched_passwords}",textAlign: TextAlign.center,style: TextStyle(fontSize: 10,color: Colors.grey[400],fontFamily: "Muli"),),
                       SizedBox(height: 47,),
                       SizedBox(
                        width:double.infinity,
                         child: TextButton(onPressed: ()=>SignUp(context), child: Text("Continue"),
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
              ),
            ),
          ),
        ),
      ),
    );
    
  }
    void SignUp(context) {
    if(Formkey.currentState!.validate())
    { 
      Formkey.currentState!.save();
      
      print("----------------");
      print(email);
      print(password);
      print(cpassword);
      if (password==cpassword){Navigator.pushNamed(
      context,
      "/home",
      );
      
      }
      else{setState(() {
        matched_passwords="Passwords not matching";
      });}
    }
  }
  String? alpha_num(String str)
  {
    //counting number of letters and alphabet and spaces and special characters to see what to return from the function
    setState(() {
        matched_passwords="";
      });
    int letterCount = 0;
    int digitCount = 0;
    int specialCharCount = 0;
    int spaceCount=0;
    if(str.length==0){return "Password Required";}
    else if(str.length<8 || str.length>20){return "Must contain 8-20 characters";}
    else{
    for (var match in RegExp(r'[a-zA-Z]').allMatches(str)) {
    letterCount++;
    }
    for (var match in RegExp(r'\d').allMatches(str)) {
    digitCount++;
    }
    for (var match in RegExp(r'[^a-zA-Z\d]').allMatches(str)) {
    specialCharCount++;
    }
    
    for (var match in RegExp(r'\s').allMatches(str)) {
    spaceCount++;
    } 
    specialCharCount=specialCharCount-spaceCount;
    //excluding spaces from special chars
    if(letterCount*digitCount*specialCharCount!=0)
    {return null;}
    else{
      if (spaceCount==str.length) return "Password can't be all spaces";
      else if(letterCount==0) return "Must contain at least 1 character";
      else if(digitCount==0) return "Must contain at least 1 digit";
      else if(specialCharCount==0) return "Must contain at least 1 special character";
      

    }


    }
  }
}