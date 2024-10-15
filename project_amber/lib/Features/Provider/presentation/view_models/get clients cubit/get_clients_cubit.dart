import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/models/clients_model/clients_model.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'get_clients_state.dart';

class GetClientsCubit extends Cubit<GetClientsState> {
  GetClientsCubit(this.providerRepo) : super(GetClientsInitial());
  final ProviderRepo providerRepo;
  Future<void> clients() async {
    emit(GetClientsLoading());
    var result = await providerRepo.getclients();
    result.fold((failure) {
      emit(GetClientsFailure(failure.errMessage));
    }, (clients) {
      emit(GetClientsSuccess(clients));
    });
  }
}
