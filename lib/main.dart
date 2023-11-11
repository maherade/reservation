import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/bussiness_logic/app_cubit.dart';
import 'package:reservation_task/presentation/home_screen/home_screen.dart';
import 'package:reservation_task/styles/color_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit()..picDateRange(context),
        )
      ],
      child:   MaterialApp(
        theme: ThemeData(
          bottomSheetTheme:   BottomSheetThemeData(
            backgroundColor: ColorManager.greyBackGround,
            constraints: BoxConstraints(minWidth: double.infinity,maxHeight: MediaQuery.sizeOf(context).height*.9),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),

        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
