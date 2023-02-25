import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/screens/home/widgets/store_items.dart';
import 'package:flutter_svg/svg.dart';
import '../../../models/product_model.dart';
import 'widgets/section_title.dart';
class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    size: 16,
                                    color: Colors.grey,
                                  )),
                              Text(
                                'My Cart',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Multi",
                                ),
                              ),
                              SizedBox(width: 20,)
                            ],
                          ),
                SectionTitle(text: "Wano Store",text2: false,),
                    store_items(popularProduct: productsList[0],),
                    store_items(popularProduct: productsList[1],),
                  SectionTitle(text: "Sportz Store",text2: false,),
                    store_items(popularProduct: productsList[2],),
                    store_items(popularProduct: productsList[3],)
                
                
                
                
                
                
                    ],
                  ),
                ),
              ),
            ),
            Container(
          height: 120,
          color: Colors.white,
          child:Padding(
            padding: const EdgeInsets.only(left:30,right: 30,top:10),
            child: Column(
              children: [
                Row(children: [
                  Container(
                    decoration:BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: SvgPicture.asset("assets/icons/receipt.svg")),
                  ),
                Expanded(child:SizedBox(height: 0,),),
                                
                                Text(
                                'Add voucher code',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Multi",
                                ),
                              ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey[300],)),
                ],),

                Row(children: [
                    Column(
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Multi",
                          ),
                        ),
                        Text(
                      '${(productsList[0].price + productsList[1].price + productsList[2].price + productsList[3].price).toStringAsFixed(2)}',

                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Multi",
                      ),
                    ),
                      ],
                    ),
                    
                    Expanded(child: SizedBox()),
                            TextButton(
                    onPressed: () {},
                    child: Text('Check Out'),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xfff77546),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  
                ],)
              ],
            ),
          )
          ),
          ],
        ),
      ),
    );
  }
}