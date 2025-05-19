import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
        required this.labelText,
        this.prefixIcon,
        this.suffixIcon,
        this.isSecure = false,
        this.onClick,
        this.keyboardType = TextInputType.text,
        this.maxLines = 1 ,
         this.controller
      });

  final String labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isSecure;
  final VoidCallback? onClick;
  final TextInputType keyboardType;
  final int maxLines;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller,
      maxLines: maxLines,
      obscureText: isSecure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null
            ? IconButton(onPressed: onClick, icon: Icon(suffixIcon))
            : null,
      ),
    );
  }
}