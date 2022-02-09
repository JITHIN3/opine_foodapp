import 'package:flutter/material.dart';

class TextSection extends StatefulWidget {
  final onpressed;
  final label;

  const TextSection(
      {Key? key,
      required this.onpressed,



      required this.label})
      : super(key: key);

  @override
  State<TextSection> createState() => _TextSectionState();
}

class _TextSectionState extends State<TextSection> {



  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(

        labelText: widget.label,
        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
        suffixIcon: Visibility(
          child: TextButton(
            onPressed: widget.onpressed,
            child: Text(
              "EDIT",
              style: TextStyle(color: Color(-287547078)),
            ),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(-7128541),
          ),
        ),
      ),
    );
  }
}
