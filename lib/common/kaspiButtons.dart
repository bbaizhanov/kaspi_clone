import 'package:flutter/material.dart';

Widget kaspiButtons({required int size,required String text,required IconData iconData}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        IconButton(
          iconSize: size.toDouble(),
          onPressed: (){},
          icon:Icon(
            iconData,
            color: Colors.red,
          ),
        ),
        Text(text)
      ],
    ),
  );
}