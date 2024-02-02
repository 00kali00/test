import 'package:flutter/material.dart';
import '../components/sub_card.dart';
// import '../models/main_cat.dart';

class SubCat extends StatelessWidget {
  const SubCat({super.key,required this.catType});
final String catType;
  @override
  Widget build(BuildContext context) {
   switch(catType)
    {
      case "Fruits":
        return  const Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/lemon.webp',name: 'Lemon', price: 1.50,),
                    Subcard(imageSrc: 'images/banana.jpg',name: 'Banana', price: 2.05,),
                  ],
                ),
                SizedBox(height: 35,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/grape.webp',name: 'grape', price: 3.15,),
                     Subcard(imageSrc: 'images/orange.jpg',name: 'Orange', price: 2.00,),
                  ],
                ),
              ],
            );
      break;
      case "Bakery":
       return  const Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/Toast.png',name: 'Toast', price: 4.00,),
                    Subcard(imageSrc: 'images/bread.jpg',name: 'Bread', price: 1.25,),
                  ],
                ),
                SizedBox(height: 35,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/cookies.jpg',name: 'Cookies', price: 2.70,),
                     Subcard(imageSrc: 'images/loaf.webp',name: 'Loaf', price: 3.35,),
                  ],
                ),
              ],
            );
      break;
      case "Vegetables":
        return  const Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/potato.jpg',name: 'Potato', price: 9.00,),
                    Subcard(imageSrc: 'images/cucamber.jpg',name: 'Cucamber', price: 3.25,),
                  ],
                ),
                SizedBox(height: 35,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/onion.jpg',name: 'Onion', price: 6.70,),
                     Subcard(imageSrc: 'images/tomato.jpg',name: 'Tomato', price: 4.35,),
                  ],
                ),
              ],
            );
       break;
       case "Milk":
        return  const Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/milk.jpg',name: 'Milk', price: 2.00,),
                    Subcard(imageSrc: 'images/yogart.jpg',name: 'Yogurt', price: 6.00,),
                  ],
                ),
                SizedBox(height: 35,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/egg.jpg',name: 'Egg', price: 3.50,),
                     Subcard(imageSrc: 'images/cheese.jpg',name: 'Cheese', price: 10.00,),
                  ],
                ),
              ],
            );
      break;
      default:
        return  const Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Subcard(imageSrc: 'images/error.jpg',name: 'Error 404', price: 00.00,),
                    Subcard(imageSrc: 'images/error.jpg',name: 'Error 404', price: 00.00,),
                  ],
                ),
                SizedBox(height: 35,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Subcard(imageSrc: 'images/error.jpg',name: 'Error 404', price: 00.00,),
                     Subcard(imageSrc: 'images/error.jpg',name: 'Error 404', price: 00.00,),
                  ],
                ),
              ],
            );
      break;
    }
  }
}