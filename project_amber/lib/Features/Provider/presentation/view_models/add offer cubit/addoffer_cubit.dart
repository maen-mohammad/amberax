import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'addoffer_state.dart';

class AddofferCubit extends Cubit<AddofferState> {
  AddofferCubit(this.repo) : super(AddofferInitial());
  final ProviderRepo repo;
  Future<void> addoffer(var body) async {
    emit(AddofferLoading());
    var result = await repo.addoffer(body);
    result.fold((failure) {
      emit(AddofferFailure(failure.errMessage));
    }, (success) {
      emit(AddofferSuccess(success));
    });
  }
}
