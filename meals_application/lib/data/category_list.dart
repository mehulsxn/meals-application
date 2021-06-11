import 'package:flutter/material.dart';
import 'package:meals_application/widgets/categort.dart';
import 'package:meals_application/widgets/receipe.dart';

List categories_list = [
  Category(
      id: 1,
      allreciepes: [
        Receipe(
          imageurl:
              'https://www.cookingclassy.com/wp-content/uploads/2018/07/stovetop-macaroni-cheese-1.jpg',
          name: 'mac n cheese',
          money: 'affordable',
          difficulty: 'simple',
        ),
      ],
      name: 'italian',
      imageurl:
          'https://i1.wp.com/www.eatthis.com/wp-content/uploads/2020/12/unhealthiest-foods-planet.jpg?fit=1200%2C879&ssl=1'),
  Category(
      id: 2,
      allreciepes: [
        Receipe(
          imageurl:
              'https://www.cookwithmanali.com/wp-content/uploads/2020/05/Masala-Dosa.jpg',
          name: 'dosa',
          money: 'affordable',
          difficulty: 'simple',
        ),
      ],
      name: 'south indian',
      imageurl:
          'https://miro.medium.com/max/2400/1*InlgltnGNwj7W93dJ_oQ_g.jpeg'),
  Category(
      id: 3,
      allreciepes: [],
      name: 'eastern',
      imageurl:
          'https://media2.fdncms.com/chicago/imager/u/original/27090143/best_middle_eastern-rezas.jpg'),
  Category(
      id: 4,
      allreciepes: [],
      name: 'dubai',
      imageurl:
          'https://images.everydayhealth.com/images/diet-nutrition/what-is-a-plant-based-diet-beginners-guide-food-list-benefits-722x406.jpg'),
  Category(
      id: 5,
      allreciepes: [],
      name: 'pizza',
      imageurl:
          'https://imgmedia.lbb.in/media/2019/07/5d242ad8e93a896e5542da0d_1562651352251.jpg'),
  Category(
      id: 6,
      allreciepes: [],
      name: 'pasta',
      imageurl:
          'https://assetcdn.buhlergroup.com/rendition/874601345621/1f9a88a855e0452cbb353b224459e4b7/-FJPG-TwebHeader_16x9'),
];
