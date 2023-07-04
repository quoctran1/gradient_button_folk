import 'package:flutter/material.dart';
import 'package:gradient_coloured_buttons/gradient_coloured_buttons.dart';

void main() {
  runApp(GradientButtons());
}

class GradientButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradient Coloured button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GradientColouredButton(),
    );
  }
}
class GradientColouredButton extends StatefulWidget {
  const GradientColouredButton({Key? key}) : super(key: key);

  @override
  State<GradientColouredButton> createState() => _GradientColouredButtonState();
}

class _GradientColouredButtonState extends State<GradientColouredButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GradientButton(
              text: "Johnson Redonyx Silva",
              textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
              gradientColors: const [Colors.red,Colors.black,Colors.brown],
              width: 200,
              height: 50,
              borderRadius: 30.0,
              onPressed: ()
              {
                print("GradientButton is Pressed");
              }
          ),
        ],
      ),
    );
  }
}
