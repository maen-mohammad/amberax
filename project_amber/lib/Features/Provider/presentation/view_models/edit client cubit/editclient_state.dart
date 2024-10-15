part of 'editclient_cubit.dart';

sealed class EditclientState extends Equatable {
  const EditclientState();

  @override
  List<Object> get props => [];
}

final class EditclientInitial extends EditclientState {}

final class EditclientLoading extends EditclientState {}

final class EditclientSuccess extends EditclientState {
  final String msg;

  EditclientSuccess(this.msg);
}

final class EditclientFailure extends EditclientState {
  final String errormsg;

  EditclientFailure(this.errormsg);
}
