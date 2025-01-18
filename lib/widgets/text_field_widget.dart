import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(47, 48, 54, 1),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            constraints: BoxConstraints(maxHeight: 48),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
