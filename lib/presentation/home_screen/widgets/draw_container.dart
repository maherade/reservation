import 'package:flutter/material.dart';
import 'package:reservation_task/presentation/home_screen/widgets/column_of_the_container.dart';
import 'package:reservation_task/styles/color_manager.dart';
import 'package:reservation_task/widgets/transparent_button.dart';

class DrawContainer extends StatelessWidget {
  const DrawContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .85,
      height: MediaQuery.sizeOf(context).height * .45,
      decoration: BoxDecoration(
        color: ColorManager.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * .85,
            height: MediaQuery.sizeOf(context).height * .38,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  ColorManager.mainColor,
                  ColorManager.counterSecondColor

                ]
              ) ,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const  ColumnOfContainer(),

          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .008,
          ),
         const TransparentButton(icon: Icons.search_outlined, content: 'find hotels',)
        ],
      ),
    );
  }
}
