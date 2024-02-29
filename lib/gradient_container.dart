// import 'package:dicee_app/styled_text.dart';
import 'package:dicee_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  const GradientContainer.purple({super.key})
      : startColor = Colors.deepPurple,
        endColor = Colors.indigo;

  final Color startColor;
  final Color endColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [startColor, endColor],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// Alternative Way!

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: startAlignment,
//           end: endAlignment,
//           colors: colors,
//         ),
//       ),
//       child: const Center(
//         child: StyledText("Hello World!"),
//       ),
//     );
//   }
// }
