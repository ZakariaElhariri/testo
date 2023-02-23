// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_screen.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
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
                          child: Text("Profile",
                          textAlign: TextAlign.center,
                            style:TextStyle(
                              color: Color.fromARGB(220, 167, 164, 164),
                              fontSize: 18,
                              fontFamily:"Muli",
                              fontWeight: FontWeight.w500,
                              ),
                          ),
                        ),
                        SizedBox(width: 35,)
                      
                      ],
                    ),
                SizedBox(height: 50,),
                
                
                 /* CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/profile_pic.png"),
                  ),*/
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        width:120,
                        height:120,
                        "assets/images/profile_pic.png"),
                    ),
                  ),
                  SizedBox(height: 45,),
                  profile_element(icon:Icons.account_box,text:"My Account"),
                  profile_element(icon:Icons.notifications_none,text:"Notifications"),
                  profile_element(icon:Icons.settings_sharp,text:"Settings"),
                  profile_element(icon:Icons.help_outline_outlined,text:"Help Center"),
                  profile_element(icon:Icons.logout_outlined,text:"Log Out"),
                  
                  
              ],
            ),

          ),
        ),
      ),

    );
  }
}

class profile_element extends StatelessWidget {
  final IconData? icon;
  final String text;
  const profile_element({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(
            builder: (context)=>Scaffold(
              body:SafeArea(
                child:Padding(
                  padding: EdgeInsets.all(8),
                  child:SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
              
                        IconButton(
                    onPressed: () {
                    Navigator.pop(context);
                    },
                    // add 5
                    //HELLO
                    //BYE
                    icon: Icon(
                      
                    Icons.arrow_back_ios_rounded,
                    color: Colors.grey[500],
                    size: 15,
                    ),
                  ),
                        
                        Expanded(
                          child: Text(text,
                          textAlign: TextAlign.center,
                            style:TextStyle(
                              color: Color.fromARGB(220, 167, 164, 164),
                              fontSize: 18,
                              fontFamily:"Muli",
                              fontWeight: FontWeight.w500,
                              )
                          )
                        ),
                        SizedBox(width: 35,)
                      
                      ],
                    ),
                  ),
               ))
            )
          )
          );
        },
        child: Container(
          width: double.maxFinite,
          height: 60,
          decoration:BoxDecoration(
            
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[100],
          ),
          child:Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:15.0),
                   child: Icon(
                    size:40,
                    color:Colors.orange,
                    icon),
                 ),
                 
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(left:5),
                     child: Text(text,
                     
                       style:TextStyle(
                         color: Color.fromARGB(255, 72, 71, 71),
                         fontSize: 18,
                         fontFamily:"Muli",
                         fontWeight: FontWeight.w500,
                         ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0),
                   
                    
                    child:Icon(
                      size:18,
                      Icons.arrow_forward_ios_outlined,
                      color:Colors.grey[400],
                      ),
                   
                 ),
          ],
          )
        ),
      ),
    );
  }
}