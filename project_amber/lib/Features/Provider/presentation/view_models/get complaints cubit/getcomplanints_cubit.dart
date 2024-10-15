import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/models/complaints/complaints.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'getcomplanints_state.dart';

class GetcomplanintsCubit extends Cubit<GetcomplanintsState> {
  GetcomplanintsCubit(this.providerRepo) : super(GetcomplanintsInitial());
   final ProviderRepo providerRepo;
  Future<void> getcomplaints() async {
    emit(GetcomplanintsLoading());
    var result = await providerRepo.getcomplaints();
    result.fold((failure) {
      emit(GetcomplanintsFailure(failure.errMessage));
    }, (complaints) {
      emit(GetcomplanintsSuccess(complaints));
    });
  }
}
