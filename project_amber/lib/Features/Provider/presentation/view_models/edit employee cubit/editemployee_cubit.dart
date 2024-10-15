import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'editemployee_state.dart';

class EditemployeeCubit extends Cubit<EditemployeeState> {
  EditemployeeCubit(this.repo) : super(EditemployeeInitial());

  final ProviderRepo repo;
  Future<void> editemployee(var body) async {
    emit(EditemployeeLoading());
    var result = await repo.editemployee(body);
    result.fold((failure) {
      emit(EditemployeeFailure(failure.errMessage));
    }, (success) {
      emit(EditemployeeSuccess(success));
    });
  }

  Future<void> deleteemployee(var body) async {
    emit(EditemployeeLoading());
    var result = await repo.deleteemployee(body);
    result.fold((failure) {
      emit(EditemployeeFailure(failure.errMessage));
    }, (success) {
      emit(EditemployeeSuccess(success));
    });
  }
}
