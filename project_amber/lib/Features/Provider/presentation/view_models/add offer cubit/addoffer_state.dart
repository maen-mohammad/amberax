part of 'addoffer_cubit.dart';

sealed class AddofferState extends Equatable {
  const AddofferState();

  @override
  List<Object> get props => [];
}

final class AddofferInitial extends AddofferState {}

final class AddofferLoading extends AddofferState {}

final class AddofferFailure extends AddofferState {
  final String errormsg;

  AddofferFailure(this.errormsg);
}

final class AddofferSuccess extends AddofferState {
  final String msg;

  AddofferSuccess(this.msg);
}
