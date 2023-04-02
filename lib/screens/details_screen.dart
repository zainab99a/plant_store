import 'package:flutter/material.dart';
import '../../constant.dart';
import '../models/product.dart';
import '../widgets/details/details_body.dart';
class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
    body: DetailsBody(product: product,),);

  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      //to return to previous page
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(Icons.arrow_back,
        color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),

      );
  }
}

