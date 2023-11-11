import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/bussiness_logic/app_cubit.dart';
import 'package:reservation_task/styles/color_manager.dart';

class DateRangeWidget extends StatefulWidget {
  const DateRangeWidget({super.key});

  @override
  State<DateRangeWidget> createState() => _DateRangeWidgetState();
}

class _DateRangeWidgetState extends State<DateRangeWidget> {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        final start = cubit.dateRange.start;
        final end = cubit.dateRange.end;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: MediaQuery
                .sizeOf(context)
                .height * .07,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorManager.white,
              border: Border.all(
                color: Colors.white, // Change the color as desired
                width: 2.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextButton(
              onPressed: () {
                cubit.picDateRange(context);
              },
              child: BlocConsumer<AppCubit, AppState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return Text(
                    "${start.year}-${start.month}-${start.day} ==> ${end
                        .year}-${end.month}-${end.day}",
                    style: const TextStyle(
                        color: ColorManager.mainColor, fontSize: 20),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
