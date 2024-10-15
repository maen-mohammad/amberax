part of 'addresponse_cubit.dart';

sealed class AddresponseState extends Equatable {
  const AddresponseState();

  @override
  List<Object> get props => [];
}

final class AddresponseInitial extends AddresponseState {}

final class AddresponseLoading extends AddresponseState {}

final class AddresponseFailure extends AddresponseState {
  final String errormsg;

  AddresponseFailure(this.errormsg);
}

final class AddresponseSuccess extends AddresponseState {
  final String msg;

  AddresponseSuccess(this.msg);
}
