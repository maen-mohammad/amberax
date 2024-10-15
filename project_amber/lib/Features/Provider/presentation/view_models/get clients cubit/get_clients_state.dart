part of 'get_clients_cubit.dart';

sealed class GetClientsState extends Equatable {
  const GetClientsState();

  @override
  List<Object> get props => [];
}

final class GetClientsInitial extends GetClientsState {}

final class GetClientsLoading extends GetClientsState {}

final class GetClientsSuccess extends GetClientsState {
 final ClientsModel clientsModel;

  GetClientsSuccess(this.clientsModel);

}

final class GetClientsFailure extends GetClientsState {
  final String errormsg;

  GetClientsFailure(this.errormsg);
}
