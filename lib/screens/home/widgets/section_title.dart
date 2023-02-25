import 'package:flutter/material.dart';

class SectionTitle extends StatefulWidget {
  final String text;
  final bool text2;
   SectionTitle({
    Key? key,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  State<SectionTitle> createState() => _SectionTitleState();
}

class _SectionTitleState extends State<SectionTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: const TextStyle(
              color: Color.fromARGB(255, 130, 129, 129),
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Text(
            widget.text2?"See More":"",
            style: TextStyle(
              color: Color.fromARGB(255, 188, 188, 188),
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}