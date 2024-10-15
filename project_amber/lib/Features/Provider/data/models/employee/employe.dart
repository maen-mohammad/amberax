import 'package:equatable/equatable.dart';

class Employe extends Equatable {
	final int? id;
	final int? providerId;
	final String? name;
	final String? email;
	final String? password;
	final int? type;
	final dynamic photo;
	final String? address;
	final DateTime? createdAt;
	final DateTime? updatedAt;

	const Employe({
		this.id, 
		this.providerId, 
		this.name, 
		this.email, 
		this.password, 
		this.type, 
		this.photo, 
		this.address, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory Employe.fromJson(Map<String, dynamic> json) => Employe(
				id: json['id'] as int?,
				providerId: json['provider_id'] as int?,
				name: json['name'] as String?,
				email: json['email'] as String?,
				password: json['password'] as String?,
				type: json['type'] as int?,
				photo: json['photo'] as dynamic,
				address: json['address'] as String?,
				createdAt: json['created_at'] == null
						? null
						: DateTime.parse(json['created_at'] as String),
				updatedAt: json['updated_at'] == null
						? null
						: DateTime.parse(json['updated_at'] as String),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'provider_id': providerId,
				'name': name,
				'email': email,
				'password': password,
				'type': type,
				'photo': photo,
				'address': address,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				providerId,
				name,
				email,
				password,
				type,
				photo,
				address,
				createdAt,
				updatedAt,
		];
	}
}
