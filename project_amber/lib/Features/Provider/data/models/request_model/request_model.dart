import 'package:equatable/equatable.dart';

import 'request.dart';

class RequestModel extends Equatable {
	final List<Request>? requests;

	const RequestModel({this.requests});

	factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
				requests: (json['requests'] as List<dynamic>?)
						?.map((e) => Request.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'requests': requests?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [requests];
}
