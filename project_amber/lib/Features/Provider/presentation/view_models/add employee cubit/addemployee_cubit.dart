import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'addemployee_state.dart';

class AddemployeeCubit extends Cubit<AddemployeeState> {
  AddemployeeCubit(this.repo) : super(AddemployeeInitial());
  final ProviderRepo repo;
  Future<void> addemployee(var body,int type) async {
    var result;
    emit(AddemployeeLoading());
    if (type == 1) {
      result = await repo.addcollector(body);
    } else if (type == 2) {
      result = await repo.addaccountant(body);
    } else {
      result = await repo.addmaintenance(body);
    }
    result.fold((failure) {
      emit(AddemployeeFailuer(failure.errMessage));
    }, (success) {
      emit(Addemployeesuccess(success));
    });
  }
}
