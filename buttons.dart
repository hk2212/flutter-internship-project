import 'package:flutter_internship_assignment/consts/consts.dart';

Widget ourButton({onPress, color, textColor, title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed:onPress,
      child: "$title".text.color(textColor).fontFamily(bold).make(),
  );
}