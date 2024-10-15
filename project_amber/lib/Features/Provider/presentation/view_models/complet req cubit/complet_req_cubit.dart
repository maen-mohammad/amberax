import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';

part 'complet_req_state.dart';

class CompletReqCubit extends Cubit<CompletReqState> {
  CompletReqCubit(this.repo) : super(CompletReqInitial());

  final ProviderRepo repo;
  Future<void> completreq(var body) async {
    emit(CompletReqLoading());
    var result = await repo.completrequest(body);
    result.fold((failure) {
      emit(CompletReqFailure(failure.errMessage));
    }, (success) {
      emit(CompletReqSuccess(success));
    });
  }
}
