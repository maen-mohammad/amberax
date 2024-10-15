import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:project_amber/Features/auth/data/models/login/login_model.dart';
import 'package:project_amber/Features/auth/data/repos/repos_auth.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/services/services.dart';
import '../models/token.dart';

class RepositoryAuthImpl extends ReposAuth {
  Services apiServices = new Services();
  @override
  Future<Either<Failure, LoginModel>> login(
      {required String email, required String password}) async {
    try {
      final result = await apiServices.loginService(
        endpoint: 'all/login',
        email: email,
        password: password,
      );

      LoginModel loginModel = LoginModel.fromJson(result);
      Token.token = loginModel.accessToken!;
      return right(loginModel);
    } catch (e) {
      if (e is DioExceptionType) {
        return Left(ServerFailure.fromDioError(e as DioException));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
