part of 'getoffers_cubit.dart';

sealed class GetoffersState extends Equatable {
  const GetoffersState();

  @override
  List<Object> get props => [];
}

final class GetoffersInitial extends GetoffersState {}

final class GetoffersLoading extends GetoffersState {}

final class GetoffersFailure extends GetoffersState {
  final String errormsg;

  GetoffersFailure(this.errormsg);
}

final class GetoffersSuccess extends GetoffersState {
  final Offers offers;

  GetoffersSuccess(this.offers);
}
