import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:project_amber/Features/Provider/data/models/bills_value/bills_value.dart';
import 'package:project_amber/Features/Provider/data/models/clients_model/clients_model.dart';
import 'package:project_amber/Features/Provider/data/models/complaints/complaints.dart';
import 'package:project_amber/Features/Provider/data/models/employee/employee.dart';
import 'package:project_amber/Features/Provider/data/models/offers/offers.dart';
import 'package:project_amber/Features/Provider/data/models/request_model/request_model.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo.dart';
import 'package:project_amber/core/errors/failures.dart';
import 'package:project_amber/core/services/services.dart';

class ProviderRepoImpl implements ProviderRepo {
  final Services services = new Services();
  @override
  Future<Either<Failure, RequestModel>> getrequest() async {
    try {
      var data =
          await services.post(endurl: 'provider/users_request', body: null);
      RequestModel requests = RequestModel.fromJson(data);
      print(requests);
      return right(requests);
    } on Exception catch (e) {
      if (e is DioException) {
        print(e.error);
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> completrequest(var body) async {
    try {
      var data =
          await services.post1(endurl: 'provider/complete_request', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      print(e.toString());
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ClientsModel>> getclients() async {
    try {
      var data = await services.post(endurl: 'provider/clients', body: null);
      ClientsModel clientsModel = ClientsModel.fromJson(data);
      // print(data.toString());
      return right(clientsModel);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> editclient(var body) async {
    try {
      var data =
          await services.post1(endurl: 'provider/update_client', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> deletclient(var body) async {
    try {
      var data =
          await services.post(endurl: 'provider/delete_client', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Employee>> getemployee() async {
    try {
      var data = await services.post(endurl: 'provider/employes', body: null);
      Employee employee = Employee.fromJson(data);
      // print(data.toString());
      return right(employee);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> addaccountant(var body) async {
    try {
      var data =
          await services.post2(endurl: 'provider/add_accountent', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> addcollector(var body) async {
    try {
      var data =
          await services.post2(endurl: 'provider/add_collector', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> addmaintenance(var body) async {
    try {
      var data =
          await services.post2(endurl: 'provider/add_maintenance', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> addoffer(var body) async {
    try {
      var data = await services.post(endurl: 'provider/add_offer', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Offers>> getoffers() async {
    try {
      var data = await services.post(endurl: 'provider/offers', body: null);
      Offers offers = Offers.fromJson(data);
      // print(data.toString());
      return right(offers);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> addresponse(var body) async {
    try {
      var data =
          await services.post(endurl: 'provider/add_response', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Complaints>> getcomplaints() async {
    try {
      var data = await services.post(endurl: 'provider/complaints', body: null);
      Complaints complaints = Complaints.fromJson(data);
      // print(data.toString());
      return right(complaints);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BillsValue>> getbills() async {
    try {
      var data =
          await services.post(endurl: 'provider/bills_value', body: null);
      BillsValue billsValue = BillsValue.fromJson(data);
      // print(data.toString());
      return right(billsValue);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> editinfo(var body) async {
    try {
      var data =
          await services.post(endurl: 'provider/complete_profile', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> editemployee(var body) async {
    try {
      var data =
          await services.post3(endurl: 'provider/update_employe', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> deleteemployee(var body) async {
    try {
      var data =
          await services.post(endurl: 'provider/delete_employe', body: body);
      print(data.toString());
      return right('تمت العملية بنجاح');
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
