import 'package:flutter/material.dart';
import 'package:reservation_task/styles/color_manager.dart';

class NationalityDropDownMenuButton extends StatelessWidget {
  const NationalityDropDownMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listOfValue = ['Egypt', 'USA', 'Ksa', 'UAE', 'UK', 'Germany'];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * .07,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(
            color: Colors.white, // Change the color as desired
            width: 2.0, // Adjust the border width as needed
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Expanded(
            child: DropdownButtonFormField(
              hint: const Text(
                "Select Nationality",
                style: TextStyle(color: ColorManager.mainColor, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: ColorManager.mainColor,
              ),
              disabledHint: const Text(
                "Select Nationality",
                style: TextStyle(color: ColorManager.mainColor, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              isExpanded: true,
              items: listOfValue.map((String val) {
                return DropdownMenuItem(
                    value: val,
                    child: Text(
                      val,
                      style: const TextStyle(color: ColorManager.mainColor),
                    ));
              }).toList(),
              onChanged: (Object? value) {},
            ),
          ),
        ),
      ),
    );
  }
}
