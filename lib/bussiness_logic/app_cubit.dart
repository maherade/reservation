import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(const Duration(days: 1)),
  );


  Future picDateRange(BuildContext context) async {
emit(DatePickerLoadingState());
   DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        initialDateRange: dateRange,
        firstDate: DateTime(2000),
        lastDate: DateTime(2500));
   if (newDateRange != null) {
     print("-------------------------------");
     print(newDateRange.start);
     print(newDateRange.end);
     emit(DatePickerSuccessState());
    return dateRange = newDateRange;
   }
   else{
     emit(DatePickerErrorState());
     return;
   }
  }

  bool switchButton=false;
  bool switchAvailableButton(){
    emit(SwitchButtonLoadingState());
    if(switchButton = !switchButton){
      emit(SwitchButtonSuccessState());
      return switchButton=true;
    }
    else {
      emit(SwitchButtonSuccessState());
      return switchButton=false;
    }
  }

  int roomCounter=1;
  void increaseRoomsCounter(){
    emit(IncreaseCounterSuccessState());
    roomCounter++;
  }
  void decreaseRoomsCounter(){
    if(roomCounter==1){
      return;
    }else{
      emit(DecreaseCounterSuccessState());
      roomCounter--;
    }
  }



  int childrenCounter=1;
  void increaseChildrenCounter(){
    emit(IncreaseChildrenCounterSuccessState());
    childrenCounter++;
  }
  void decreaseChildrenCounter(){
    if(childrenCounter==1){
      return;
    }else{
      emit(DecreaseChildrenCounterSuccessState());
      childrenCounter--;
    }
  }

  int adultCounter=1;
  void increaseAdultCounter(){
    emit(IncreaseAdultCounterSuccessState());
    adultCounter++;
  }
  void decreaseAdultCounter(){
    if(adultCounter==1){
      return;
    }else{
      emit(DecreaseAdultCounterSuccessState());
      adultCounter--;
    }
  }




}
