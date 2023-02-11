import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class onboarding_screen extends StatefulWidget {
  const onboarding_screen({super.key});

  @override
  State<onboarding_screen> createState() => _onboarding_screenState();
}

class _onboarding_screenState extends State<onboarding_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("TOKOTO",style: TextStyle(color: Colors.orange[700],fontSize:40,fontFamily: 'Muli',fontWeight: FontWeight.w700),)],
                          ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                          Text("Welcome to ",style: TextStyle(color: Colors.grey,fontSize:15,),),
                          Text("Tokoto",style: TextStyle(color: Colors.grey,fontSize:15,fontWeight: FontWeight.bold),),
                          Text(" ,let's shop! ",style: TextStyle(color: Colors.grey,fontSize:15,),),
                          ],
                          ),
                          
                        
                        SizedBox(height: 80,),
                        //--------------------------------------------------
                        // if you would like to add this piece of code to work, khass folder ikoun smitou assets westou picture smitha tokoto.png
                        // I commented it and i will replace it with a nrml sizedBox/container as you mentioned we do in the assignement
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children:[Image.asset('assets/images/onboarding_screen.png',width: 250 ,height: 250,),]
                          ),
                          // ALTERNATE WAY :  IMAGE NETWORK !!!!
                         /* 
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                          children:[Image.network('https://raw.githubusercontent.com/GDG-Guelmim/flutter_bootcamp_2023_ecommerce_app/main/assets/images/splash_1.png',width: 250 ,height: 250,),]
                          ),
                          */
                        /*
                    
                        Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(99, 216, 204, 184),
                      
                    ),
                    width:250,
                    height: 280,),*/
                        
                        //----------------------------------------------
                          SizedBox(height: 50,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Colors.orange[700],
                      
                                  ),
                                  width:20,
                                  height: 5,),
                    SizedBox(width: 5,),
                              Container(
                    decoration: BoxDecoration(
                      
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      
                    ),
                    width: 5,
                    height: 5,
                      ),
                      SizedBox(width: 5,),
                              Container(
                    decoration: BoxDecoration(
                      
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      
                    ),
                    width: 5,
                    height: 5,
                      ),
                            ],
                          ),
                          SizedBox(height: 79,),
                      TextButton(
                        onPressed: ()=>Signin(context),
                       child: Text("Continue"),
                      style: TextButton.styleFrom(
                      backgroundColor: Colors.orange[800],
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize:25,),
                      padding:  EdgeInsets.fromLTRB(100, 22, 100, 22),
                      shape: StadiumBorder() ,
                      
                  
                      ),
                      ),
                      /*SvgPicture.asset("/images/icons8-google.svg",
                      height: 30,
                      )*/
                      ],
                    ),
          ),
        ),
      ),
    );
  }
  void Signin(context) {
    
      Navigator.pushNamed(
      context,
      "/signin",
      );
    
  }
}