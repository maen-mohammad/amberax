import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'editclient_state.dart';

class EditclientCubit extends Cubit<EditclientState> {
  EditclientCubit(this.repo) : super(EditclientInitial());
  ProviderRepo repo;
  Future<void> editclient(var body) async {
    emit(EditclientLoading());
    var resulte = await repo.editclient(body);
    resulte.fold((failure) {
      emit(EditclientFailure(failure.errMessage));
    }, (msg) {
      emit(EditclientSuccess(msg));
    });
  }
}
