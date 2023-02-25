

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatefulWidget {
  final String iconPath;
  String navigationPath;
  CustomIconButton({
    Key? key,
    required this.iconPath,
    required this.navigationPath,
  }) : super(key: key);

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        onPressed: (){
        setState(() {
          print("navigation done in ${widget.navigationPath}");
          Navigator.pushNamed(context, widget.navigationPath);
        });
        },
        icon: 
        
        SvgPicture.asset(widget.iconPath),
      ),
    );
  }
}