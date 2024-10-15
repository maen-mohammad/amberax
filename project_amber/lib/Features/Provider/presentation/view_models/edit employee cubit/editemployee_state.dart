part of 'editemployee_cubit.dart';

sealed class EditemployeeState extends Equatable {
  const EditemployeeState();

  @override
  List<Object> get props => [];
}

final class EditemployeeInitial extends EditemployeeState {}

final class EditemployeeLoading extends EditemployeeState {}

final class EditemployeeFailure extends EditemployeeState {
  final String errormsg;

  EditemployeeFailure(this.errormsg);
}

final class EditemployeeSuccess extends EditemployeeState {
  final String msg;

  EditemployeeSuccess(this.msg);
}
