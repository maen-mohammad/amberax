import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:project_amber/Features/auth/data/repos/repos_auth.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/models/login/login_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  ReposAuth _repository;

  AuthCubit(this._repository) : super(AuthInitialState());

  Future<Either<Failure, LoginModel>> login(
      final String email, final String password) async {
    emit(AuthLoadingState());
    print(email+'    '+password);
    var result = await _repository.login(email: email, password: password);

    result.fold((failure) {
      emit(AuthFailureState(failure.errMessage));
    }, (result) {
      emit(AuthSuccessState(result));
    });

    return result;
  }
}
