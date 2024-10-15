part of 'deletclient_cubit.dart';

sealed class DeletclientState extends Equatable {
  const DeletclientState();

  @override
  List<Object> get props => [];
}

final class DeletclientInitial extends DeletclientState {}

final class DeletclientLoading extends DeletclientState {}

final class DeletclientFailure extends DeletclientState {
  final String errormsg;

  DeletclientFailure(this.errormsg);
}

final class DeletclientSuccess extends DeletclientState {
  final String msg;

  DeletclientSuccess(this.msg);
}
