import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kaspi_clone/pages/home_view.dart';
import 'package:kaspi_clone/pages/home_view_2.dart';
import 'package:kaspi_clone/pages/services.dart';

class UIConstants{
  static List<Widget> bottomTabBarPages=[
    HomeView2(),
    Text('messages'),
    Services(),
  ];
  static Widget kredit(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: (){},
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/IMG_20230629_223850.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          width: 80,
          child: TextButton(
              onPressed: (){},
              child: Text(
                'Кредит',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              )
          ),
        )
      ],
    );
  }
}
