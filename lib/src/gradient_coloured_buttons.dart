import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed,onLongPressed;
  final List<Color> gradientColors;
  final double width;
  final double height;
  final double borderRadius;
  final TextStyle textStyle;

  const GradientButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.onLongPressed,
    this.gradientColors = const [Colors.blue, Colors.green],
    this.width = 200.0,
    this.height = 50.0,
    this.borderRadius = 8.0,
    this.textStyle = const TextStyle(color: Colors.white, fontSize: 16.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        onLongPress: onLongPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ), backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
          elevation: 0,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
