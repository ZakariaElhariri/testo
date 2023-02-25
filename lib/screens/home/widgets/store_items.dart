import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import 'popular_product_item.dart';
import 'section_title.dart';
import 'store_products.dart';
class store_items extends StatelessWidget {

  final ProductModel popularProduct;
  store_items({
    required this.popularProduct,
    super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(

      children: [
        
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            
            children: [
            Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffEDEEF1),
                  ),
                  child: Image.asset(
                    popularProduct.images[0],
                  ),
                ),
           
                const SizedBox(width :10),
                Container(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       const SizedBox(height: 5),
                       
                  Text(
                    popularProduct.title,
                     overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 108, 106, 106),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      
                    ),
                  ),
                      Text(
                        "${popularProduct.price.toStringAsFixed(2)}\$ x1",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 143, 106),
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 20),
               ],
            ),
                ),
          
          
      ],
    ),
        ),
    ],
    );
  }
}