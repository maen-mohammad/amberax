import 'package:equatable/equatable.dart';

class User extends Equatable {
	final int? id;
	final String? name;
	final String? email;
	final String? password;
	final String? area;
	final String? streets;
	final dynamic feez;
	final dynamic phone;
	final dynamic phone2;
	final dynamic photo;
	final int? costPk;
	final String? license;
	final DateTime? createdAt;
	final DateTime? updatedAt;

	const User({
		this.id, 
		this.name, 
		this.email, 
		this.password, 
		this.area, 
		this.streets, 
		this.feez, 
		this.phone, 
		this.phone2, 
		this.photo, 
		this.costPk, 
		this.license, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory User.fromJson(Map<String, dynamic> json) => User(
				id: json['id'] as int?,
				name: json['name'] as String?,
				email: json['email'] as String?,
				password: json['password'] as String?,
				area: json['area'] as String?,
				streets: json['streets'] as String?,
				feez: json['feez'] as dynamic,
				phone: json['phone'] as dynamic,
				phone2: json['phone2'] as dynamic,
				photo: json['photo'] as dynamic,
				costPk: json['cost_pk'] as int?,
				license: json['license'] as String?,
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
				'password': password,
				'area': area,
				'streets': streets,
				'feez': feez,
				'phone': phone,
				'phone2': phone2,
				'photo': photo,
				'cost_pk': costPk,
				'license': license,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				name,
				email,
				password,
				area,
				streets,
				feez,
				phone,
				phone2,
				photo,
				costPk,
				license,
				createdAt,
				updatedAt,
		];
	}
}
