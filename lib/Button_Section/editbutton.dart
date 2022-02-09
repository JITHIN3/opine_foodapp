import 'package:flutter/material.dart';
import 'package:opine_foodapp/Button_Section/cancelbuttonsection.dart';
import 'package:opine_foodapp/Button_Section/updatebuttonsection.dart';

class EditButtons extends StatefulWidget {
  const EditButtons({Key? key}) : super(key: key);

  @override
  _EditButtonsState createState() => _EditButtonsState();
}

class _EditButtonsState extends State<EditButtons> {

  final isBack = true;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: UpdateButton(
            buttoncolor: Color(-336357267),
            onpressed: () {},
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: CancelButton(
          onpressed: () {
          },
        ),
      ),
    ]);
  }
}
