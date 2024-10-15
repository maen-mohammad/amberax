import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'deletclient_state.dart';

class DeletclientCubit extends Cubit<DeletclientState> {
  DeletclientCubit(this.repo) : super(DeletclientInitial());
  ProviderRepo repo;
  Future<void> deleteclient(var body) async {
    emit(DeletclientLoading());
    var result = await repo.deletclient(body);
    result.fold((failure) {
      emit(DeletclientFailure(failure.errMessage));
    }, (msg) {
      emit(DeletclientSuccess(msg));
    });
  }
}
