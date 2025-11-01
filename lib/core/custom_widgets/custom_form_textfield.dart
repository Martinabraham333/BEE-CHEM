
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';

class CustomFormTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? title;
  final int? maxLines;

  final IconData? icon;
  final double widthSize;
  final bool? readonly;
  final VoidCallback? ontap;
  final String? Function(String?)? validator;

  const CustomFormTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.title,

    this.widthSize = double.infinity,
    this.icon,
    this.readonly,
    this.ontap, required this.validator, this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: title!,fontSize: 12,),
        SizedBox(height: 10,),
        SizedBox(
          width: widthSize,
          child: TextFormField(
            maxLines: maxLines,
            validator:validator,
            readOnly: readonly ?? false,
            cursorColor: Colors.black,
            controller: controller,
            style: TextStyle(color: Colors.black,fontSize: 12),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black,fontSize: 12),
              hintText: hintText,
              border: InputBorder.none,
              suffixIcon: GestureDetector(
                onTap: ontap,
                child: Icon(icon, color: Colors.black,size: 12,),
              ),
            
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color:Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),

               errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),


        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
            ),
          ),
        ),
      ],
    );
  }
}
