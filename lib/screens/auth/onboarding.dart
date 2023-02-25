import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/auth/signin_screen.dart';
import 'package:flutter_svg/svg.dart';

import 'signin_screen.dart';
//hello
class onboarding_screen extends StatefulWidget {
  const onboarding_screen({super.key});

  @override
  State<onboarding_screen> createState() => _onboarding_screenState();
}

class _onboarding_screenState extends State<onboarding_screen> {
  int _currentPage = 0;
  PageController _controller = PageController();
  PageController _controller2 = PageController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
                    children: [
                      SizedBox(height: 30,),
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
                      /*Row(mainAxisAlignment: MainAxisAlignment.center,
                        children:[Image.asset('assets/images/onboarding_screen_1.png',width: 250 ,height: 250,),]
                        ),*/
                        Container(
          height: 250,
          padding:EdgeInsets.symmetric(horizontal: 100),
          child: PageView(
            onPageChanged: (index){
              setState(() {
                _currentPage=index;
              });
            },
            physics: BouncingScrollPhysics(),
            controller: _controller,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash_1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash_2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash_3.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        /*Container(
          height: 20,
          width: 20,
          padding:EdgeInsets.symmetric(horizontal: 100),
          child: PageView(
            onPageChanged: (index){
              setState(() {
                _currentPage=index;
              });
            },
            physics: BouncingScrollPhysics(),
            controller: _controller,
            children: [
              Container(
                    width:10,
                    height: 10,
                    decoration:BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width:10,
                    height: 10,
                    decoration:BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width:10,
                    height: 10,
                    decoration:BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
            ],
          ),
        ),*/
        
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
                        SizedBox(height: 20,),

                        Container(
                          height: 5,
                          padding: EdgeInsets.symmetric(horizontal:190),//277.5),
                          child: PageView(
                            onPageChanged: (index){
                                setState(() {
                                  _currentPage=index;
                                  
                                });
                              },
                          
                            controller: _controller2,
                            children:[ 
                                Container(
                                              decoration: BoxDecoration(
                                                
                                                color: Colors.grey[400],
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                                
                                              ),
                                              width: 4,
                                              height: 5,
                                                ),
                                             
                                Container(
                                              decoration: BoxDecoration(
                                                
                                                color: Colors.orange[400],
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                                
                                              ),
                                              width: 5,
                                              height: 5,
                                                ),
                                               //hello 
                                
                                                Container(
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.orange[700],
                                                
                                    ),
                                    width:10,
                                    height: 5,),
                              
                            ]
                          ),
                        ),
                        SizedBox(height: 79,),
                    TextButton(
                       onPressed: () {
            setState(() {
              //_currentPage=_currentPage;
              if (_currentPage == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SigninScreen(),
                  ),
                );
                _currentPage=0;
                _controller.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.linear);
                
                _controller2.animateToPage(_currentPage,duration: Duration(milliseconds: 300), curve: Curves.linear);
              } 
              else {
                _currentPage = (_currentPage + 1) % 3;
                _controller.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.linear);
                
                _controller2.animateToPage(_currentPage,duration: Duration(milliseconds: 300), curve: Curves.linear);
              }
            });
          },
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
    );
  }
  void Signin(context) {
    
      Navigator.pushNamed(
      context,
      "/signin",
      );
    
  }
}