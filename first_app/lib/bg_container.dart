import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

const startAlig = Alignment.topCenter;
const endAlig = Alignment.bottomCenter;
// class BgContainer extends StatelessWidget {
//   const BgContainer({super.key, required this.colors});
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors ,
//               begin: startAlig,
//               end: endAlig,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('فـــزعـــــــــة'),
//           ),
//         );
//   }
// }

class BgContainer extends StatelessWidget {
  const BgContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlig,
          end: endAlig,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
