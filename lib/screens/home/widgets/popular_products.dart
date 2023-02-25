import 'package:flutter_application_2/screens/home/widgets/popular_product_item.dart';
import 'package:flutter_application_2/screens/home/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../../../models/product_model.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        SectionTitle(text: "Popular Products",text2: true,),
        SizedBox(
            width: double.maxFinite,
            height: 220,
            child: ListView.builder(
                itemCount: productsList.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return PopularProductItem(
                    popularProduct: productsList[index],
                  );
                }))
      ],
    );
  }
}