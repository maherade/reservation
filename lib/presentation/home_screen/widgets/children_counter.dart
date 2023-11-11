import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/bussiness_logic/app_cubit.dart';
import 'package:reservation_task/styles/color_manager.dart';

class ChildrenCounterRow extends StatefulWidget {
  int counter;
  Color counterColor;
  ChildrenCounterRow({required this.counterColor, required this.counter,super.key});

  @override
  State<ChildrenCounterRow> createState() => _CounterRowState();
}

class _CounterRowState extends State<ChildrenCounterRow> {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side:  BorderSide(
                      width: 1, // the thickness
                      color: widget.counterColor, // the color of the border
                    )
                ),
                onPressed: () {
                  cubit.decreaseChildrenCounter();
                },
                child:  Text(
                  "−",
                  style: TextStyle(
                      color: widget.counterColor,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                )),
            SizedBox(width: MediaQuery
                .sizeOf(context)
                .width * .04,),
            Text("${widget.counter}",
              style: const TextStyle(color: ColorManager.black,
                fontSize: 25,), textAlign: TextAlign.center,),
            SizedBox(width: MediaQuery
                .sizeOf(context)
                .width * .04,),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: const BorderSide(
                      width: 1, // the thickness
                      color: ColorManager.mainColor, // the color of the border
                    )
                ),
                onPressed: () {
                  cubit.increaseChildrenCounter();

                },
                child: const Text(
                  "+",
                  style: TextStyle(
                      color: ColorManager.mainColor,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                )),
          ],
        );
      },
    );
  }
}
