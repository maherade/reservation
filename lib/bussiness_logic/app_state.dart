part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}
class LaunchState extends AppState {}

class DatePickerLoadingState extends AppState {}
class DatePickerSuccessState extends AppState {}
class DatePickerErrorState extends AppState {}

class SwitchButtonLoadingState extends AppState{}
class SwitchButtonSuccessState extends AppState{}

class IncreaseCounterSuccessState extends AppState{}
class DecreaseCounterSuccessState extends AppState{}

class IncreaseChildrenCounterSuccessState extends AppState{}
class DecreaseChildrenCounterSuccessState extends AppState{}

class IncreaseAdultCounterSuccessState extends AppState{}
class DecreaseAdultCounterSuccessState extends AppState{}
