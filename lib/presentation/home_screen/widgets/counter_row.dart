import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/bussiness_logic/app_cubit.dart';
import 'package:reservation_task/styles/color_manager.dart';

class CounterRow extends StatefulWidget {
 int counter;
 Color counterColor;
    CounterRow({required this.counterColor, required this.counter,super.key});

  @override
  State<CounterRow> createState() => _CounterRowState();
}

class _CounterRowState extends State<CounterRow> {


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
                  if(widget.counter == cubit.roomCounter){
                    cubit.decreaseRoomsCounter();
                  }else if(widget.counter == cubit.adultCounter){
                    cubit.decreaseAdultCounter();
                  }else{
                    cubit.decreaseChildrenCounter();
                  }
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
                  if(widget.counter == cubit.roomCounter){
                    cubit.increaseRoomsCounter();
                  }else if(widget.counter == cubit.adultCounter){
                    cubit.increaseAdultCounter();
                  }else{
                    cubit.increaseChildrenCounter();
                  }

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
