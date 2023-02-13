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
          child: Column(
            children: [
              SizedBox(height: 10,),
              //CustomAppBar(),
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
                    child: Text("HomeScreen",
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
            ],
          ),
        ),
      )
    );
  }
}
class test_screen extends StatelessWidget {
  const test_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
	body: ListView(
    children: [
      CarouselSlider(
        carouselController: CarouselController(),
        items: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/images/onboarding_screen_1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/images/onboarding_screen_2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/images/onboarding_screen_3.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ], 
        options: CarouselOptions(
            height: 350,
            
            enlargeCenterPage: true,
            
            
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.5,
          ),
        ),
    ]),
    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _currentPage = 0;
  PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            padding:EdgeInsets.symmetric(horizontal: 100),
            child: PageView(
              controller: _controller,
              children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/onboarding_screen_1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/onboarding_screen_2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/onboarding_screen_3.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          TextButton(
            child: Text("Continue"),
            onPressed: () {
              setState(() {
                if (_currentPage == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const signin_screen(),
                    ),
                  );
                } else {
                  _currentPage = (_currentPage + 1) % 3;
                  _controller.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.linear);
                }
              });
            },
          ),
        ],
      ),
    );
  }
}


class pageview_test extends StatelessWidget {
  const pageview_test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        scrollDirection: Axis.horizontal,
            children: [
             Container(width: 200,height: 350,
              child: Image.asset("assets/images/onboarding_screen_3.png")),
              Container(width: 200,height: 350,
              child: Image.asset("assets/images/onboarding_screen_3.png")),
             Container(width: 200,height: 350,
             child: Image.asset("assets/images/onboarding_screen_3.png")),
            ],
          ),
    );
  }
}