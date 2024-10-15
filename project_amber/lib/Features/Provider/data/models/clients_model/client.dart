import 'package:equatable/equatable.dart';

class Client extends Equatable {
	final int? id;
	final int? userId;
	final int? providerId;
	final String? clientName;
	final String? address;
	final int? counter;
	final int? phone;
	final int? boxNumber;
	final String? idPhoto;
	final DateTime? createdAt;
	final DateTime? updatedAt;

	const Client({
		this.id, 
		this.userId, 
		this.providerId, 
		this.clientName, 
		this.address, 
		this.counter, 
		this.phone, 
		this.boxNumber, 
		this.idPhoto, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory Client.fromJson(Map<String, dynamic> json) => Client(
				id: json['id'] as int?,
				userId: json['user_id'] as int?,
				providerId: json['provider_id'] as int?,
				clientName: json['client_name'] as String?,
				address: json['address'] as String?,
				counter: json['counter'] as int?,
				phone: json['phone'] as int?,
				boxNumber: json['box_number'] as int?,
				idPhoto: json['id_photo'] as String?,
				createdAt: json['created_at'] == null
						? null
						: DateTime.parse(json['created_at'] as String),
				updatedAt: json['updated_at'] == null
						? null
						: DateTime.parse(json['updated_at'] as String),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'user_id': userId,
				'provider_id': providerId,
				'client_name': clientName,
				'address': address,
				'counter': counter,
				'phone': phone,
				'box_number': boxNumber,
				'id_photo': idPhoto,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				userId,
				providerId,
				clientName,
				address,
				counter,
				phone,
				boxNumber,
				idPhoto,
				createdAt,
				updatedAt,
		];
	}
}
