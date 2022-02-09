import 'package:flutter/material.dart';
import 'package:opine_foodapp/Textfield_Section/textfieldsection.dart';
import 'Button_Section/editbutton.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isName = true;
  bool isPhone = true;
  bool isEmail = true;
  bool isVisible = true;
  bool EmailVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "EDIT ACCOUNT",
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        elevation: .5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              //......Name Textfiled......//
              child: TextSection(
                  onpressed: () {
                    setState(() {

                      isName = !isName;
                    });
                  },
                  label: "NAME"),
            ),
            if (!isName) EditButtons(),
            //.......Phone Textfield.........//
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextSection(
                    onpressed: () {

                      setState(() {

                        isPhone = !isPhone;
                      });
                    },
                    label: "PHONE NUMBER")),
            if (!isPhone) EditButtons(),
            //...........Email Textfield.........//
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextSection(
                    onpressed: () {

                      setState(() {

                        isEmail = !isEmail;

                      });
                    },
                    label: "EMAIL ADDRESS")),
            if (!isEmail) EditButtons(),
          ],
        ),
      ),
    );
  }
}
