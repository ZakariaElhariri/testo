
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../profile.dart';
class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
              child: TextField(
                
                decoration: InputDecoration(
                prefixIcon:  Icon(Icons.search),
                hintText:"Search product", 
                //enabled: false,
                enabledBorder: InputBorder.none,
              focusedBorder:InputBorder.none, 
                ),
              ),
              ),
            ),
      
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          decoration: BoxDecoration( 
            color: Color.fromARGB(162, 239, 237, 237),
            shape:BoxShape.circle
          ),
          child: IconButton(
            onPressed: () {},
            icon:Icon(Icons.shopping_cart)
            )
          ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          decoration: BoxDecoration( 
            
            color: Color.fromARGB(162, 239, 237, 237),
            shape:BoxShape.circle
          ),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const profile(),
                    ),
                  );
            },
            icon:Icon(Icons.notifications)
            )
          ),
      ),


      ]),
    );
  }
}
class CategoryItem extends StatelessWidget {
  final String title, iconPath;

  const CategoryItem({
    Key? key,
    required this.title,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffFFECDF),
          ),
          child: SvgPicture.asset(iconPath),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 50,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}