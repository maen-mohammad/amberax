import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'addresponse_state.dart';

class AddresponseCubit extends Cubit<AddresponseState> {
  AddresponseCubit(this.repo) : super(AddresponseInitial());
  final ProviderRepo repo;
  Future<void> addresponse(var body) async {
    emit(AddresponseLoading());
    var result = await repo.addresponse(body);
    result.fold((failure) {
      emit(AddresponseFailure(failure.errMessage));
    }, (success) {
      emit(AddresponseSuccess(success));
    });
  }
}
