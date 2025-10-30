
import 'package:flutter/material.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';

class CustomDropDown extends StatelessWidget {
  final TextEditingController controller;
  final List dropDownList;
  final double width;
  final String title;
  final Function ontap;
  final String hintText;

  const CustomDropDown({
    super.key,
    required this.hintText,
    this.width = double.infinity,
    required this.ontap,
    required this.controller,
    required this.dropDownList, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CustomText(text: title),
        ),

        TextField(
          controller: controller,
          readOnly: true,
          decoration: InputDecoration(
            
           filled: true,
            fillColor: Color(0x1A000000),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x1A000000)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x1A000000)),
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: PopupMenuButton(
              icon: Icon(Icons.arrow_drop_down, color: Colors.green, size: 30),
              itemBuilder: (context) {
                return [
                  for (var item in dropDownList)
                    PopupMenuItem(
                      onTap: () {
                        ontap(item);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ];
              },
            ),
            hintStyle: TextStyle(color: Colors.grey),
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
