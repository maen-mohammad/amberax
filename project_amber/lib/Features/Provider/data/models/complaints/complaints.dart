import 'package:equatable/equatable.dart';

import 'complaint.dart';

class Complaints extends Equatable {
	final List<Complaint>? complaints;

	const Complaints({this.complaints});

	factory Complaints.fromJson(Map<String, dynamic> json) => Complaints(
				complaints: (json['complaints'] as List<dynamic>?)
						?.map((e) => Complaint.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'complaints': complaints?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [complaints];
}
