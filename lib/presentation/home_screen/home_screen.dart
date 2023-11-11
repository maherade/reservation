import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/bussiness_logic/app_cubit.dart';
import 'package:reservation_task/presentation/home_screen/widgets/draw_container.dart';
import 'package:reservation_task/presentation/home_screen/widgets/irregular_square_widget.dart';
import 'package:reservation_task/styles/color_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
  listener: (context, state) {
  },
  builder: (context, state) {
    return Scaffold(
      body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/backGround.webp',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.sizeOf(context).height * .28,
              left: MediaQuery.sizeOf(context).width * -.2,
              child: CustomPaint(
                // size:   Size(Size.fromWidth(200).width, Size.fromHeight(200).height),
                painter: IrregularQuadrilateralPainter(),
              ),
            ),
            Positioned(
                top: MediaQuery.sizeOf(context).height * .39,
                right: MediaQuery.sizeOf(context).width * .49,
                child: const Text(
                  'Hotels Search',
                  style: TextStyle(
                      color: ColorManager.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: MediaQuery.sizeOf(context).height * .475,
                left: MediaQuery.sizeOf(context).width * .06,
                child: const DrawContainer()),

          ],
        ),
    );
  },
);

  }
}
/*
*           Positioned(
            top: MediaQuery.sizeOf(context).height * .28,
            left: MediaQuery.sizeOf(context).width * -.2,
            child: CustomPaint(
              // size:   Size(Size.fromWidth(200).width, Size.fromHeight(200).height),
              painter: IrregularQuadrilateralPainter(),
            ),
          ),
          Positioned(
              top: MediaQuery.sizeOf(context).height * .39,
              right: MediaQuery.sizeOf(context).width * .49,
              child: const Text(
                'Hotels Search',
                style: TextStyle(
                    color: ColorManager.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: MediaQuery.sizeOf(context).height * .475,
              left: MediaQuery.sizeOf(context).width * .06,
              child: const DrawContainer()),
*
*
* */