import 'package:flutter/material.dart';
import 'package:reservation_task/styles/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
    const CustomTextFormField({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
      border: Border.all(
      color: Colors.white, // Change the color as desired
      width: 2.0, // Adjust the border width as needed
    ),
    borderRadius: BorderRadius.circular(20.0),),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: TextFormField(
            textAlign: TextAlign.center,
            style: const TextStyle(color: ColorManager.mainColor,fontSize: 20),
            decoration: InputDecoration(
              filled: true,
              hintText: hintText,
              hintStyle:const  TextStyle(color: ColorManager.mainColor, fontSize: 20),
              contentPadding: const EdgeInsets.all(10),
              fillColor: ColorManager.white,
              enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: ColorManager.lightBlue
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
