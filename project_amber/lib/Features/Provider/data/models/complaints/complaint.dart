import 'package:equatable/equatable.dart';

import 'response.dart';

class Complaint extends Equatable {
	final int? id;
	final int? userId;
	final int? providerId;
	final String? descreption;
	final DateTime? createdAt;
	final DateTime? updatedAt;
	final List<Response>? responses;

	const Complaint({
		this.id, 
		this.userId, 
		this.providerId, 
		this.descreption, 
		this.createdAt, 
		this.updatedAt, 
		this.responses, 
	});

	factory Complaint.fromJson(Map<String, dynamic> json) => Complaint(
				id: json['id'] as int?,
				userId: json['user_id'] as int?,
				providerId: json['provider_id'] as int?,
				descreption: json['descreption'] as String?,
				createdAt: json['created_at'] == null
						? null
						: DateTime.parse(json['created_at'] as String),
				updatedAt: json['updated_at'] == null
						? null
						: DateTime.parse(json['updated_at'] as String),
				responses: (json['responses'] as List<dynamic>?)
						?.map((e) => Response.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'user_id': userId,
				'provider_id': providerId,
				'descreption': descreption,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
				'responses': responses?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				userId,
				providerId,
				descreption,
				createdAt,
				updatedAt,
				responses,
		];
	}
}
