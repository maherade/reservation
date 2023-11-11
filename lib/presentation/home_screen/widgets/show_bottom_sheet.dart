import 'package:flutter/material.dart';
import 'package:reservation_task/presentation/home_screen/widgets/pets_row.dart';
import 'package:reservation_task/presentation/home_screen/widgets/room1_container.dart';
import 'package:reservation_task/presentation/home_screen/widgets/rooms_counter_row.dart';
import 'package:reservation_task/styles/color_manager.dart';

Future<dynamic> showDetailsBottomSheet(BuildContext context) {
return  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return SizedBox(
        height: MediaQuery.sizeOf(context).height * .9,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .08,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: ColorManager.white,

                  borderRadius: BorderRadius.only(topRight:Radius.circular( 30.0),topLeft:Radius.circular( 30.0)),
                ),
                child:  const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10,),
                    Text(
                      'Rooms and Guests',
                      style: TextStyle(
                        color: ColorManager.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    CloseButton(),

                  ],
                ),
              ),
                Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const RoomsRow(),
                    SizedBox(height: MediaQuery.of(context).size.height * .02,),
                    const RoomDetailsContainer(),
                    SizedBox(height: MediaQuery.of(context).size.height * .02,),
                    const PetRow(),
                    SizedBox(height: MediaQuery.of(context).size.height * .1,),
                    Container(
                      width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * .06,
                        child: ElevatedButton(onPressed: (){}, child: Text("Apply")))
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
