import 'package:flutter/material.dart';
import 'package:personal_info_manager/core/app_colors.dart';


class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final double width;
  final Color backGroundColor;
  final Color textColor;
  const CustomButton(
      {super.key,
      required this.title,
      required this.ontap,
       this.width=double.infinity,  this.backGroundColor= AppColors.primaryColor,  this.textColor=Colors.black});

  @override
  Widget build(BuildContext context) {
 
    return Container(
      height: 40,
        width: width,
        decoration: BoxDecoration(
            color:  backGroundColor, borderRadius: BorderRadius.circular(20)),
        child: TextButton(
            onPressed: ontap,
            child: Text(
              title,
              style: TextStyle(color:textColor, fontSize: 14),
            )));
  }
}
