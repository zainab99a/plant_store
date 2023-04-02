import 'package:flutter/material.dart';
import 'package:plant_store/constant.dart';
import 'package:plant_store/widgets/details/product_image.dart';

import '../../models/product.dart';
class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50)
                ,bottomRight:Radius.circular(50) ),
          ),
       child: Column(
         children: [
          ProductImage(size: size, image:product.image),

           Padding(
             padding:
             const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
             child: Text(
               product.title,
               style: Theme.of(context).textTheme.headline6,
             ),
           ),
           Text(
             'السعر: \$${product.price}',
             style: TextStyle(
               fontSize: 28.0,
               fontWeight: FontWeight.w600,
               color: kSecondaryColor,
             ),
           ),
           SizedBox(height: kDefaultPadding),

         ],
       ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        ),
      ],
    );
  }}



