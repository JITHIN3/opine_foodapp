import 'package:flutter/material.dart';

class UpdateButton extends StatefulWidget {
  final onpressed;
  Color buttoncolor;
  UpdateButton({Key? key, required this.onpressed, required this.buttoncolor})
      : super(key: key);

  @override
  _UpdateButtonState createState() => _UpdateButtonState();
}

class _UpdateButtonState extends State<UpdateButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onpressed,
      child: Text("UPDATE"),
      style: ElevatedButton.styleFrom(
        primary: widget.buttoncolor,
        fixedSize: Size(175, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
