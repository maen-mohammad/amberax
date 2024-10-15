part of 'addemployee_cubit.dart';

sealed class AddemployeeState extends Equatable {
  const AddemployeeState();

  @override
  List<Object> get props => [];
}

final class AddemployeeInitial extends AddemployeeState {}

final class AddemployeeLoading extends AddemployeeState {}

final class AddemployeeFailuer extends AddemployeeState {
  final String errormsg;

  AddemployeeFailuer(this.errormsg);
}

final class Addemployeesuccess extends AddemployeeState {
  final String msg;

  Addemployeesuccess(this.msg);
}
