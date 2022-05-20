import 'package:flutter/material.dart';


class NewSlider extends StatelessWidget {
  final double myValue;
  final  Function(double) changeSlider;
  const NewSlider({Key? key, required this.myValue, required this.changeSlider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Slider(
     onChanged: changeSlider,
     value: myValue,

    ) ;
  }
}
