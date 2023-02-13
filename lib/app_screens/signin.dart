import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../home/home_screen.dart';
class signin_screen extends StatefulWidget {
  const signin_screen({super.key});
  @override
  State<signin_screen> createState() => _signin_screenState();
}
bool isChecked = false;
class _signin_screenState extends State<signin_screen> {
  bool? check=false;
  
  bool pass=false;
  String? hide="Click to hide";
  String? show="Click to show";
  String? show_or_hide="Click to show";
  String? email;
  String? password;
  
  var Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Form(
              key: Formkey,
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
                        child: Text("Sign In",
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
                   const Text("Welcome Back",
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
                  const  Text("Sign in with your email and password",
                         textAlign: TextAlign.center,
                           style:TextStyle(
                             color: Color.fromARGB(220, 167, 164, 164),
                             fontSize: 15,
                             fontFamily:"Muli",
                             fontWeight: FontWeight.w100,
                             ),
                         ),
                     
                      
                      const  Text("or continue with social media .",
                       textAlign: TextAlign.center,
                         style:TextStyle(
                           color: Color.fromARGB(220, 167, 164, 164),
                           fontSize: 15,
                           fontFamily:"Muli",
                           fontWeight: FontWeight.w100,
                           ),
                       ),
                       SizedBox(height: 50,),
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
                       SizedBox(height: 35,),
                         TextFormField(
                          onSaved: (String? v1){
                            password=v1;
                          },
                          validator: (String? value)
                            { 
                                return alpha_num(value!);
                            },
                            obscureText: !pass,
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
                        // this row is just additional kent baghi njereb nzid see password to see if it would work and it did
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){
                                  setState(() {
                                    pass = !pass;
                                    if(!pass){show_or_hide=show;}
                                    else {show_or_hide=hide;}
                                  });
                              }, 
                              icon:pass? Icon(Icons.remove_red_eye_outlined):Icon(Icons.password),
                              ),
                              SizedBox(width:4),
                              Text("${show_or_hide}",style: TextStyle(fontFamily: "Muli",fontWeight: FontWeight.w100,color: Colors.grey[400],fontSize: 15),),
                            ],
                          ),
                          // this row is just additional kent baghi njereb nzid see password to see if it would work and it did
                       SizedBox(height:7,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
            
                          Row(
                            children: [
                              Checkbox(
                                value: check,
                               onChanged:(bool? value){
                                  setState(() {
                                    check = value;
                                  });
                              }),
                              //StatefulCheckBox(),
                              SizedBox(width:4),
                              Text("Remember me",style: TextStyle(fontFamily: "Muli",fontWeight: FontWeight.w100,color: Colors.grey[400],fontSize: 15),),
                            ],
                          ),
                          
                          TextButton(onPressed: (){},
                            child: Text("Forgot Password",style: TextStyle(fontFamily: "Muli",fontWeight: FontWeight.w100,color: Colors.grey[400],fontSize: 15,decoration:TextDecoration.underline,),
                            )
                            ),
                          
                          ],
                       ),
                       SizedBox(height: 40,),
                       SizedBox(
                        width:double.infinity,
                         child: TextButton(
                           //navigate without condition
                          //onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen()),),
                          onPressed: ()=>Signin(context),
                          child: Text("Continue"),
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
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const  Text("Dont have an account?",
                             textAlign: TextAlign.center,
                               style:TextStyle(
                                 color: Color.fromARGB(220, 167, 164, 164),
                                 fontSize: 15,
                                 fontFamily:"Muli",
                                 fontWeight: FontWeight.w100,
                                 ),
                             ),
                             
                            GestureDetector
                            ( onTap: () => Navigator.pushNamed(
                              context,
                              "/signup",
                            ),
                              child: Text("Sign Up",style: TextStyle(fontFamily: "Muli",fontWeight: FontWeight.w700,color: Colors.orange[400],fontSize: 15,),
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

  void Signin(context) {
    if(Formkey.currentState!.validate())
    {
      Formkey.currentState!.save();
      print("----------------");
      print(email);
      print(password);
      print(check);
      Navigator.pushNamed(
      context,
      "/home",
      );
    }
  }
  String? alpha_num(String str)
  {
    //counting number of letters and alphabet and spaces and special characters to see what to return from the function
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
/*bool? check1 = false; //true for checked checkbox, false for unchecked one
Checkbox( //only check box
  value: check1, //unchecked
  onChanged: (bool? value){
      //value returned when checkbox is clicked
      setState(() {
          check1 = value;
      });
  }
)*/
class StatefulCheckBox extends StatefulWidget {
  const StatefulCheckBox({super.key});

  @override
  State<StatefulCheckBox> createState() => _StatefulCheckBoxState();
}

class _StatefulCheckBoxState extends State<StatefulCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: changeCheckboxState,
    );
  }

  void changeCheckboxState(bool? value) {
    isChecked = value!;
    setState(() {});
  }
}