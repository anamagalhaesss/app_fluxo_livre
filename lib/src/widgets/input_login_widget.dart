import 'package:flutter/material.dart';

class InputLoginWidget extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;

  const InputLoginWidget({
    required this.icon,
    required this.hint,
    required this.obscure,
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              icon: Icon(icon, color: Color(0xfFFFFFFF)),
              hintText: hint,
              hintStyle: TextStyle(color: Color(0xfFFFFFFF)),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
              )
            ),
            style: TextStyle(color: Color(0xfFFFFFFF)),
            obscureText: obscure,
    );
  }
}