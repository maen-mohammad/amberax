part of 'getbills_cubit.dart';

sealed class GetbillsState extends Equatable {
  const GetbillsState();

  @override
  List<Object> get props => [];
}

final class GetbillsInitial extends GetbillsState {}

final class GetbillsLoading extends GetbillsState {}

final class GetbillsFailure extends GetbillsState {
  final String errormsg;

  GetbillsFailure(this.errormsg);
}

final class GetbillsSuccess extends GetbillsState {
  final BillsValue billsValue;

  GetbillsSuccess(this.billsValue);
}
