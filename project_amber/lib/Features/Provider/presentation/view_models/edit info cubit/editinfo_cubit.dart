import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo_impl.dart';

part 'editinfo_state.dart';

class EditinfoCubit extends Cubit<EditinfoState> {
  EditinfoCubit( this.repo) : super(EditinfoInitial());
  
  final ProviderRepo repo;
  Future<void> editinfo(var body) async {
    emit(EditinfoLoading());
    var result = await repo.editinfo(body);
    result.fold((failure) {
      emit(EditinfoFailure(failure.errMessage));
    }, (success) {
      emit(EditinfoSuccess(success));
    });
  }
}
