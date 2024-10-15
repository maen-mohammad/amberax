import 'package:equatable/equatable.dart';

class Bill extends Equatable {
	final int? id;
	final int? userId;
	final int? providerId;
	final int? oldValue;
	final int? newValue;
	final int? cost;
	final int? state;
	final dynamic photo;
	final DateTime? createdAt;
	final DateTime? updatedAt;

	const Bill({
		this.id, 
		this.userId, 
		this.providerId, 
		this.oldValue, 
		this.newValue, 
		this.cost, 
		this.state, 
		this.photo, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory Bill.fromJson(Map<String, dynamic> json) => Bill(
				id: json['id'] as int?,
				userId: json['user_id'] as int?,
				providerId: json['provider_id'] as int?,
				oldValue: json['old_value'] as int?,
				newValue: json['new_value'] as int?,
				cost: json['cost'] as int?,
				state: json['state'] as int?,
				photo: json['photo'] as dynamic,
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
				'old_value': oldValue,
				'new_value': newValue,
				'cost': cost,
				'state': state,
				'photo': photo,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				userId,
				providerId,
				oldValue,
				newValue,
				cost,
				state,
				photo,
				createdAt,
				updatedAt,
		];
	}
}
