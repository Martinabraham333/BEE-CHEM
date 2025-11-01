
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';

class LoginFormTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;

  final IconData? icon;
  final double widthSize;
  final bool? readonly;
  final VoidCallback? ontap;
  final String? Function(String?)? validator;

  const LoginFormTextField({
    super.key,
    required this.controller,
    required this.hintText,

    this.widthSize = double.infinity,
    this.icon,
    this.readonly,
    this.ontap, required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthSize,
      child: TextFormField(
        
        validator:validator,
        readOnly: readonly ?? false,
        cursorColor: Colors.black,
        controller: controller,
        style: TextStyle(color: Colors.black,fontSize: 12),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.black),
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: ontap,
            child: Icon(icon, color: Colors.black),
          ),
        
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
