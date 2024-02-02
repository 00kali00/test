// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:project1/components/sub_card.dart';
// import '../models/sub_cat.dart';
// import '../components/main_card.dart';

class MainCat
{
  Map <String, bool>isSelectedMap =
  {
    "Bakery" : true ,
    "Fruit" :true ,
    "Vegetables" : true ,
    "Milk" :true ,
  };
  }

//Map<String, Map<String, dynamic>> fruitsMap = {
//   "oranges": {
//     "imageSrc": "images/orange.jpg",
//     "name": "Oranges",
//     "price": 2.00,
//   },
//   "grapes": {
//     "imageSrc": "images/grape.webp",
//     "name": "Grapes",
//     "price": 3.15, 
//   },
//   "bananas": {
//     "imageSrc": "images/banana2.jpg",
//     "name": "Bananas",
//     "price": 2.05, 
//   },
//   "lemons": {
//     "imageSrc": "images/lemon.webp",
//     "name": "Lemons",
//     "price": 1.50, 
//   },
// };
//      double getFruitPrice(String fruitName) {
//     if (fruitsMap.containsKey(fruitName)) {
//       return fruitsMap[fruitName]?["price"];
//     } else {
//       throw ArgumentError("Fruit not found: $fruitName");
//     }
//   }