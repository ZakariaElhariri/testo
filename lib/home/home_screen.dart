import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/widgets/custom_widgets.dart';

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
              CustomAppBar(),
              /*Row(
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
              ),*/
            ],
          ),
        ),
      )
    );
  }
}