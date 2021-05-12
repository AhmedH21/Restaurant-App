import 'package:dsc_task05/reuseable_widgets/Card.dart';
import 'package:flutter/material.dart';

class RestaurantMenu extends StatefulWidget {
  @override
  _RestaurantMenuState createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  int dropdownVal=1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(foodName: 'Meal',imageNum: 1,),
            CustomCard(foodName: 'Pizza',imageNum: 2,),
            CustomCard(foodName: 'Healthy Meal',imageNum: 3,),
          ],
        ),
      ),
    );
  }



}
