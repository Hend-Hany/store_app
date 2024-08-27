import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.onChanged,
    this.inputType,
    this.obscureText = false,
    required this.hintText, // Fixed initialization
  });

  final String hintText; // Declared as final since it's required
  final Function(String)? onChanged;
  TextInputType? inputType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: obscureText,
          onChanged: onChanged,
          decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
