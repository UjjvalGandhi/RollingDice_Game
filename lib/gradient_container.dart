import 'package:course_project/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
   GradientContainer(this.color1,this.color2,{super.key});

  GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  /*const GradientContainer({super.key,required this.colors});  // 2nd method to define list of color
  final List<Color> colors;*/


  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1,color2],
            begin: startAlignment,
            end: endAlignment,
        ),
      ),
      child: Center(
          child: DiceRoller(),
      ),

    );

  }
}