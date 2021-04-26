import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final text;
  final icon;
  const CustomTextField({Key? key, this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4.0,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          isCollapsed: true,
          prefixIcon: Icon(icon),
          hintText: text,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
