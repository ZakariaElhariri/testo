import 'package:flutter/material.dart';
//import 'package:flython/flython.dart';
// lcode kamel hna fel main
// I tried to use some of the things i knew in flutter to help style the onboarding screen , walakine ma3reftsh kifash nrje3 l continue button orange
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login page test',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const TestHomePage(),
    );
  }
}

class TestHomePage extends StatefulWidget {
  const TestHomePage({super.key});

  @override
  State<TestHomePage> createState() => _TestHomePageState();
}

class _TestHomePageState extends State<TestHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child: Padding(
          padding:EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("TOKOTO",style: TextStyle(color: Colors.orange[700],fontSize:40,),)],
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
                  children:[Image.asset('tokoto.png',width: 250 ,height: 250,),]
                  ),
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
              TextButton(onPressed: (){}, child: Text("Continue"),
              style: TextButton.styleFrom(
              backgroundColor: Colors.orange[800],
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize:25,),
              padding:  EdgeInsets.fromLTRB(100, 22, 100, 22),
              shape: StadiumBorder() ,
              
          
              ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}