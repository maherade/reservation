import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_task/bussiness_logic/app_cubit.dart';
import 'package:reservation_task/presentation/home_screen/widgets/nationality_drop_down_button.dart';
import 'package:reservation_task/presentation/home_screen/widgets/room_details_drop_down_button.dart';
import 'package:reservation_task/widgets/custom_text_form_field.dart';
import 'package:reservation_task/widgets/date_range_widget.dart';

class ColumnOfContainer extends StatefulWidget {
  const ColumnOfContainer({super.key});

  @override
  State<ColumnOfContainer> createState() => _ColumnOfContainerState();
}

class _ColumnOfContainerState extends State<ColumnOfContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return BlocConsumer<AppCubit ,AppState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return const Column(
              children: [
                CustomTextFormField(hintText: 'Select city'),
                DateRangeWidget(),
                NationalityDropDownMenuButton(),
                RoomDetailsDropDownMenuButton()

              ],
            );
          },
        );
      },
    );
  }
}
