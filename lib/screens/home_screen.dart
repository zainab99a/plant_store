import 'package:flutter/material.dart';
import '../constant.dart';

import '../widgets/home_body.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:homeAppBar(),
      body: HomeBody(),
    );
  }



// فصلنا الapp bar بميثود وحدها
      AppBar homeAppBar(){
    return AppBar( elevation: 0,
      backgroundColor: kPrimaryColor,
      title:Text('PLANT STORE',
        style: TextStyle(fontWeight: FontWeight.bold,
        )
      ) ,
      actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {  },)],
    );

      }


}
