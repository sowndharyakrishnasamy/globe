import 'package:flutter/material.dart';

import 'package:globe/themes/colors.dart';

class GradientHeading extends StatelessWidget {
  final String text;
  final List<Color> color;

  const GradientHeading({
    @required this.text,
    @required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
                  colors: color,
                  begin:Alignment.centerLeft,
                  end:Alignment.centerRight,
                  stops:[0.0,0.8]
                  ).createShader(bounds),
      child: Text(
        text,
        style:TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color:AppColors.COLOR_WHITE,
        )
      )
      
    );
  }
}