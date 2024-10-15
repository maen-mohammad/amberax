import 'package:equatable/equatable.dart';

class User extends Equatable {
	final int? id;
	final String? name;
	final String? email;
	final dynamic emailVerifiedAt;
	final DateTime? createdAt;
	final DateTime? updatedAt;

	const User({
		this.id, 
		this.name, 
		this.email, 
		this.emailVerifiedAt, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory User.fromJson(Map<String, dynamic> json) => User(
				id: json['id'] as int?,
				name: json['name'] as String?,
				email: json['email'] as String?,
				emailVerifiedAt: json['email_verified_at'] as dynamic,
				createdAt: json['created_at'] == null
						? null
						: DateTime.parse(json['created_at'] as String),
				updatedAt: json['updated_at'] == null
						? null
						: DateTime.parse(json['updated_at'] as String),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'email': email,
				'email_verified_at': emailVerifiedAt,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				name,
				email,
				emailVerifiedAt,
				createdAt,
				updatedAt,
		];
	}
}
