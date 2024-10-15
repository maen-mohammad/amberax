part of 'complet_req_cubit.dart';

sealed class CompletReqState extends Equatable {
  const CompletReqState();

  @override
  List<Object> get props => [];
}

final class CompletReqInitial extends CompletReqState {}

final class CompletReqLoading extends CompletReqState {}

final class CompletReqSuccess extends CompletReqState {
  final String msg;

  CompletReqSuccess(this.msg);
  
}

final class CompletReqFailure extends CompletReqState {
  final String errormsg;

  CompletReqFailure(this.errormsg);
}
