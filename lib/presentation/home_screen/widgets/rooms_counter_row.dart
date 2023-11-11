import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/bussiness_logic/app_cubit.dart';
import 'package:reservation_task/presentation/home_screen/widgets/counter_row.dart';
import 'package:reservation_task/styles/color_manager.dart';

class RoomsRow extends StatelessWidget {
  const RoomsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Container(
          height: MediaQuery
              .sizeOf(context)
              .height * .1,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.white, borderRadius: BorderRadius.circular(15),
          ),
          child:   Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rooms",
                  style: TextStyle(color: ColorManager.black, fontSize: 20),),
                CounterRow(counter: cubit.roomCounter,counterColor: cubit.roomCounter==1?ColorManager.lightBlue:ColorManager.mainColor,),
              ],
            ),
          ),
        );
      },
    );
  }
}
