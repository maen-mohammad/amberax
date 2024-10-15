import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/models/request_model/request_model.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'get_request_state.dart';

class GetRequestCubit extends Cubit<GetRequestState> {
  GetRequestCubit(this.providerRepo) : super(GetRequestInitial());
  final ProviderRepo providerRepo;
  Future<void> requests() async {
      emit(GetRequestLoading());
    var result = await providerRepo.getrequest();

    result.fold((failure) {
      emit(GetRequestFailure(failure.errMessage));
    }, (requests) {
      emit(GetRequestSuccess(requests));
    });
  }
}
