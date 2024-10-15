part of 'getcomplanints_cubit.dart';

sealed class GetcomplanintsState extends Equatable {
  const GetcomplanintsState();

  @override
  List<Object> get props => [];
}

final class GetcomplanintsInitial extends GetcomplanintsState {}

final class GetcomplanintsLoading extends GetcomplanintsState {}

final class GetcomplanintsFailure extends GetcomplanintsState {
  final String errormsg;

  GetcomplanintsFailure(this.errormsg);
}

final class GetcomplanintsSuccess extends GetcomplanintsState {
  final Complaints complaints;

  GetcomplanintsSuccess(this.complaints);
}
