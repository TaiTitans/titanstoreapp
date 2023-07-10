import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<String> itemNames = [
      "Cothurnus",
      "Watch",
      "Bag",
      "T-shirt",
      "Trouser",
      "Hat",
      "Shoe"
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=0;i<itemNames.length;i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/itemsCategories/${i+1}.png", width: 40, height: 40, color: Color(0xFF4C53A5),),
                  Text(itemNames[i],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFF4C53A5),
                    ),)
              ],),
            ),
        ],
      ),
    );
  }
}