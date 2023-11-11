import 'package:flutter/material.dart';
import 'package:reservation_task/presentation/home_screen/widgets/show_bottom_sheet.dart';
import 'package:reservation_task/styles/color_manager.dart';

class TransparentButton extends StatelessWidget {
  final String content;
  final IconData icon;
  const TransparentButton({required this.icon,required this.content,super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        style:  ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.transparent,
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: () {
          showDetailsBottomSheet(context);
        },
        child:   Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
              content,
              style: const  TextStyle(color: ColorManager.white, fontSize: 20),
            ),
            SizedBox(width: MediaQuery.sizeOf(context).width * .04,),
             Icon(icon,size: 40,),
          ],
        ))
    ;
  }
}
