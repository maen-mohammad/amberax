import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/models/employee/employee.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'getemployee_state.dart';

class GetemployeeCubit extends Cubit<GetemployeeState> {
  GetemployeeCubit(this.providerRepo) : super(GetemployeeInitial());
   final ProviderRepo providerRepo;
  Future<void> employee() async {
    emit(GetemployeeLoading());
    var result = await providerRepo.getemployee();
    result.fold((failure) {
      emit(GetemployeeFailure(failure.errMessage));
    }, (employee) {
      emit(GetemployeeSuccess(employee));
    });
  }
}
