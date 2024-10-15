import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/models/offers/offers.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'getoffers_state.dart';

class GetoffersCubit extends Cubit<GetoffersState> {
  GetoffersCubit(this.providerRepo) : super(GetoffersInitial());
   final ProviderRepo providerRepo;
  Future<void> getOffers() async {
    emit(GetoffersLoading());
    var result = await providerRepo.getoffers();
    result.fold((failure) {
      emit(GetoffersFailure(failure.errMessage));
    }, (offers) {
      emit(GetoffersSuccess(offers));
    });
  }
}
