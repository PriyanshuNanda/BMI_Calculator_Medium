import 'dart:core';
import 'package:flutter/material.dart';

TextStyle txt= const TextStyle(fontSize: 25,color: Color(0xFF8D8E98));
class MyFixedContainer extends StatelessWidget {
  final Widget childCard;
  final int colorer;
  const MyFixedContainer({super.key,required this.childCard, required this.colorer,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color:Color(colorer),),
        child: childCard,
      ),
      // decoration: BoxDecoration(borderRadius:BorderRadius.circular(4),color: Colors.green),
    );
  }
}
class MyIcon extends StatelessWidget {
  const MyIcon({super.key, required this.iccon,required this.texxt});
  final String texxt;
  final IconData iccon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iccon,size: 100,color: Colors.cyanAccent,),
        const SizedBox(height: 10,),
        Text(texxt, style:txt ,)

      ]
    );
  }
}



