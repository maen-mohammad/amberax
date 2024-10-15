part of 'get_request_cubit.dart';

sealed class GetRequestState extends Equatable {
  const GetRequestState();

  @override
  List<Object> get props => [];
}

final class GetRequestInitial extends GetRequestState {}

final class GetRequestLoading extends GetRequestState {}

final class GetRequestSuccess extends GetRequestState {
  final RequestModel request;
  GetRequestSuccess(this.request);
}

final class GetRequestFailure extends GetRequestState {
  final String errormsg;
  GetRequestFailure(this.errormsg);
}
