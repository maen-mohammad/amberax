import 'package:equatable/equatable.dart';

import 'user.dart';

class Request extends Equatable {
	final int? id;
	final int? userId;
	final int? providerId;
	final DateTime? createdAt;
	final DateTime? updatedAt;
	final User? user;

	const Request({
		this.id, 
		this.userId, 
		this.providerId, 
		this.createdAt, 
		this.updatedAt, 
		this.user, 
	});

	factory Request.fromJson(Map<String, dynamic> json) => Request(
				id: json['id'] as int?,
				userId: json['user_id'] as int?,
				providerId: json['provider_id'] as int?,
				createdAt: json['created_at'] == null
						? null
						: DateTime.parse(json['created_at'] as String),
				updatedAt: json['updated_at'] == null
						? null
						: DateTime.parse(json['updated_at'] as String),
				user: json['user'] == null
						? null
						: User.fromJson(json['user'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'user_id': userId,
				'provider_id': providerId,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
				'user': user?.toJson(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				userId,
				providerId,
				createdAt,
				updatedAt,
				user,
		];
	}
}
