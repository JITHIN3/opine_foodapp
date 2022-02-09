import 'package:flutter/material.dart';

class CancelButton extends StatefulWidget {
  final onpressed;
  CancelButton({
    Key? key,
    required this.onpressed,
  }) : super(key: key);

  @override
  _CancelButtonState createState() => _CancelButtonState();
}

class _CancelButtonState extends State<CancelButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onpressed,
      child: Text(
        "CANCEL",
        style: TextStyle(color: Color(-287547078)),
      ),
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width: .5,
          color: Color(-4248536),
        ),
        primary: Color(-1382682),
        fixedSize: Size(175, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
