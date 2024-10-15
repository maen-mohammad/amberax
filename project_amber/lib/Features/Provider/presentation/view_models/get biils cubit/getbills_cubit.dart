import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/models/bills_value/bills_value.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'getbills_state.dart';

class GetbillsCubit extends Cubit<GetbillsState> {
  GetbillsCubit(this.providerRepo) : super(GetbillsInitial());
  final ProviderRepo providerRepo;
  Future<void> getbills() async {
    emit(GetbillsLoading());
    var result = await providerRepo.getbills();
    result.fold((failure) {
      emit(GetbillsFailure(failure.errMessage));
    }, (bills) {
      emit(GetbillsSuccess(bills ));
    });
  }
}
