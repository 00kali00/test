import 'package:flutter/material.dart';
import '../components/main_card.dart';
// import '../components/sub_card.dart';
// import '../models/main_cat.dart';
import '../models/sub_cat.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({
      super.key,
  
    });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
      // get isSelectedMap => false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            SizedBox(height: 55,),
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               MainCard(mainIcon: Icons.breakfast_dining, mainName: "Bakery" ,isSelected: false,),
                 MainCard(mainIcon: Icons.apple, mainName: "Fruits",isSelected: false,),
                  MainCard(mainIcon: Icons.emoji_food_beverage, mainName: "Vegetables",isSelected: false,),
                   MainCard(mainIcon: Icons.water_damage_rounded, mainName: "Milk",isSelected: false,),
              ],
            ),
            SizedBox(height: 75,),
            SubCat(catType: "Bakery"),
          ],
        ),
      );
  }
}