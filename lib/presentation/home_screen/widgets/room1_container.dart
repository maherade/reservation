import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/bussiness_logic/app_cubit.dart';
import 'package:reservation_task/presentation/home_screen/widgets/adults_counter.dart';
import 'package:reservation_task/presentation/home_screen/widgets/children_counter.dart';
import 'package:reservation_task/styles/color_manager.dart';

class RoomDetailsContainer extends StatelessWidget {
  const RoomDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    var cubit = AppCubit.get(context);
    return Container(
      height: MediaQuery.sizeOf(context).height * .35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.white, borderRadius: BorderRadius.circular(15),
      ),
      child:   Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("ROOM 1",style: TextStyle( color: ColorManager.black, fontSize: 18),),
            SizedBox(height: MediaQuery.sizeOf(context).height * .02,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Adults",style: TextStyle( color: ColorManager.black, fontSize: 20),),
                AdultCounterRow(counter: cubit.adultCounter,counterColor: cubit.adultCounter==1?ColorManager.lightBlue:ColorManager.mainColor,),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * .02,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Children",style: TextStyle( color: ColorManager.black, fontSize: 20),),
                ChildrenCounterRow(counter: cubit.childrenCounter,counterColor: cubit.childrenCounter==1?ColorManager.lightBlue:ColorManager.mainColor,),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * .02,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Age of child 1",style: TextStyle( color: ColorManager.black, fontSize: 20),),
                Text("14 years",style: TextStyle( color: ColorManager.grey, fontSize: 20),),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * .03,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Age of child 2",style: TextStyle( color: ColorManager.black, fontSize: 20),),
                Text("14 years",style: TextStyle( color: ColorManager.grey, fontSize: 20),),
              ],
            ),

          ],
        ),
      ),
    );
  },
);
  }
}
