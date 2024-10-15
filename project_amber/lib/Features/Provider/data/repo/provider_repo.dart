import 'package:dartz/dartz.dart';
import 'package:project_amber/Features/Provider/data/models/bills_value/bills_value.dart';
import 'package:project_amber/Features/Provider/data/models/clients_model/clients_model.dart';
import 'package:project_amber/Features/Provider/data/models/complaints/complaints.dart';
import 'package:project_amber/Features/Provider/data/models/employee/employee.dart';
import 'package:project_amber/Features/Provider/data/models/offers/offers.dart';
import 'package:project_amber/Features/Provider/data/models/request_model/request_model.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/sections_provider.dart';
import 'package:project_amber/core/errors/failures.dart';

abstract class ProviderRepo{
   Future<Either<Failure,RequestModel>> getrequest();
      Future<Either<Failure,String>> completrequest(var body); 
         Future<Either<Failure,ClientsModel>> getclients();
      Future<Either<Failure,String>> editclient(var body); 
      Future<Either<Failure,String>> deletclient(var body); 
         Future<Either<Failure,Employee >> getemployee();
      Future<Either<Failure,String>> addcollector(var body); 
      Future<Either<Failure,String>> addmaintenance(var body); 
      Future<Either<Failure,String>> addaccountant(var body); 
         Future<Either<Failure,Offers >> getoffers();
      Future<Either<Failure,String>> addoffer(var body); 
               Future<Either<Failure,Complaints >> getcomplaints();
      Future<Either<Failure,String>> addresponse(var body); 
               Future<Either<Failure,BillsValue >> getbills();
      Future<Either<Failure,String>> editinfo(var body); 
      Future<Either<Failure,String>> editemployee(var body); 
      Future<Either<Failure,String>> deleteemployee(var body); 




 
}