import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final text;
  const PrimaryButton({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF0583B9)),
            padding: MaterialStateProperty.all(EdgeInsets.all(10.0))),
      ),
    );
  }
}
