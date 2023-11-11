import 'package:flutter/material.dart';
import 'package:reservation_task/styles/color_manager.dart';

class ThemeManager {
  static final themes = ThemeData(
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorManager.grey,
      constraints: BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    ),
  );
}
