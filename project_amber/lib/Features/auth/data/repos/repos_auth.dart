import 'package:dartz/dartz.dart';
import 'package:project_amber/Features/auth/data/models/login/login_model.dart';
import 'package:project_amber/core/errors/failures.dart';


abstract class ReposAuth {
 Future<Either<Failure, LoginModel>> login({required String email, required String password});
}