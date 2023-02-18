// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_1/home/widgets/custom_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../app_screens/signin.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              
              CustomAppBar(),
              SizedBox(height: 0,),
              Cashback(),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryItem(title: "Flash Deal", iconPath: "assets/icons/Flash Icon.svg"),
                    CategoryItem(title:"Bill" , iconPath:"assets/icons/Bill Icon.svg" ),
                    CategoryItem(title:"Game" , iconPath:"assets/icons/Game Icon.svg" ),
                    CategoryItem(title: "Daily Gift", iconPath: "assets/icons/Gift Icon.svg"),
                    CategoryItem(title: "More", iconPath: "assets/icons/Discover.svg"),
                  ],
                  
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Text("Special for you",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily:"Muli",
                        fontWeight: FontWeight.w500,
                        ),
                    ),
                    Expanded(child:Text("")),
                    Text("See More",
                      style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily:"Muli",
                        fontWeight: FontWeight.w500,
                        ),
                    ),
                  ],
                ),
              ),

              special_offers(),

              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Text("Popular Product",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily:"Muli",
                        fontWeight: FontWeight.w500,
                        ),
                    ),
                    Expanded(child:Text("")),
                    Text("See More",
                      style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily:"Muli",
                        fontWeight: FontWeight.w500,
                        ),
                    ),
                  ],
                ),
              ),

               SingleChildScrollView(scrollDirection: Axis.horizontal,
    child:Container(
      padding: EdgeInsets.only(left:20),
      child: Row(
        children:[
          Container(
          width: 170,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/Image Popular Product 1.png",
            fit: BoxFit.cover,),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
             gradient:LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black.withOpacity(.4),
          Colors.black.withOpacity(0),
        ],
      ),
          ),
        ),
        SizedBox(width: 20,),
        Container(
          
          width: 170,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/Image Popular Product 2.png",
            fit: BoxFit.cover,),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient:  LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black.withOpacity(.4),
          Colors.black.withOpacity(0),
        ],
      ),
          ),
        ),SizedBox(width: 20,),
        Container(
          width: 170,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/Image Popular Product 3.png",
            fit: BoxFit.cover,),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
             gradient:LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black.withOpacity(.4),
          Colors.black.withOpacity(0),
        ],
      ),
          ),
        ),
        ]
      ),
    ) ,
    )
            ],
          ),
        ),
      )
    );
  }
}

class special_offers extends StatelessWidget {
  const special_offers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
    child:Container(
      padding: EdgeInsets.only(left:20),
      child: Row(
        children:[
          Container(
          width: 300,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/Image Banner 2.png",
            fit: BoxFit.cover,),
          ),
          decoration: BoxDecoration(
            
          ),
        ),
        SizedBox(width: 20,),
        Container(
          
          width: 300,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/Image Banner 2.png",
            fit: BoxFit.cover,),
          ),
          decoration: BoxDecoration(
            
            
          ),
        ),SizedBox(width: 20,),
        Container(
          width: 300,
          height: 100,
          child: Image.asset("assets/images/Image Banner 2.png",
          fit: BoxFit.cover,),
          decoration: BoxDecoration(
            
          ),
        ),
        ]
      ),
    ) ,
    );
  }
}

class Cashback extends StatelessWidget {
  const Cashback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 80,
        width: double.maxFinite,
        decoration:BoxDecoration(
          color: Colors.purple[900],
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                 
                  Text("A Summer Surprise",
                    
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily:"Muli",
                        fontWeight: FontWeight.w500,
                        ),
                    ),
                    SizedBox(height:6 ,),
                    Text("Cashback 20%",
                    
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily:"Muli",
                        fontWeight: FontWeight.w500,
                        ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  