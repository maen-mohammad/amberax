part of 'editinfo_cubit.dart';

sealed class EditinfoState extends Equatable {
  const EditinfoState();

  @override
  List<Object> get props => [];
}

final class EditinfoInitial extends EditinfoState {}

final class EditinfoLoading extends EditinfoState {}

final class EditinfoFailure extends EditinfoState {
  final String errormsg;

  EditinfoFailure(this.errormsg);
}

final class EditinfoSuccess extends EditinfoState {
  final String msg;

  EditinfoSuccess(this.msg);
}
