import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/styles/color_manager.dart';

import '../../../bussiness_logic/app_cubit.dart';

class PetRow extends StatelessWidget {
  const PetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    var cubit = AppCubit.get(context);
    return Container(
      height: MediaQuery.sizeOf(context).height * .1,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.white, borderRadius: BorderRadius.circular(15),
      ),
      child:   Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Row(
                  children: [
                    Text("Pet-friendly",style: TextStyle( color: ColorManager.black, fontSize: 20),),
                    Icon(Icons.info_outlined)

                  ],
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * .01,),
                const Text("only show stays that allow pets",style: TextStyle( color: ColorManager.grey, fontSize: 16),),
              ],
            ),
            Switch(
              value: cubit.switchButton,
              onChanged: (value) {
                cubit.switchAvailableButton();
              },
            )
          ],
        ),
      ),
    );
  },
);

  }
}
