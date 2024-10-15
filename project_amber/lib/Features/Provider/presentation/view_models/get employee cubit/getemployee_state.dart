part of 'getemployee_cubit.dart';

sealed class GetemployeeState extends Equatable {
  const GetemployeeState();

  @override
  List<Object> get props => [];
}

final class GetemployeeInitial extends GetemployeeState {}

final class GetemployeeLoading extends GetemployeeState {}

final class GetemployeeFailure extends GetemployeeState {
  final String errormsg;

  GetemployeeFailure(this.errormsg);
}

final class GetemployeeSuccess extends GetemployeeState {
  final Employee employee;

  GetemployeeSuccess(this.employee);
}
