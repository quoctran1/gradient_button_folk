<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Gradient Button

A Flutter package that provides customizable buttons with gradient colors. Enhance your Flutter UI by easily creating buttons with smooth gradient backgrounds.

## Features

- Create buttons with gradient backgrounds using the `GradientButton` widget.
- Customize button dimensions, border radius, and more.
- Easy integration and usage within your Flutter projects.

## Getting started

To use this package, add `gradient_coloured_buttons` as a dependency in your `pubspec.yaml` file:


## dependencies:
`gradient_coloured_buttons: ^0.0.7`

## Example
These are the properties that you can modify:

 - `text`

 - `onPressed`

 - `gradientColors`

 - `width`

 - `height`

 - `borderRadius`

 - `textStyle`

## Usage

  ```dart
//HERE IS THE COMPLETE CODE ...

import 'package:flutter/material.dart';

//Import the package in your Dart file:

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
      body:
      //      <---content STARTS here--->
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
      //      <---content ENDS here--->
    );
  }
}

```
## Example Image

![Example Image](https://drive.google.com/uc?export=view&id=1yPtpLw-lgb2_PI2hroVpwcvbyOstWV5B)


## Additional information

This package offers a straightforward solution to apply gradient colors to buttons, enabling you to enhance their visual appeal effortlessly and efficiently.