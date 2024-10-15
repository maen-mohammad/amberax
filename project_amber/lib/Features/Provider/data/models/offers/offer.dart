import 'package:equatable/equatable.dart';

class Offer extends Equatable {
	final int? id;
	final int? providerId;
	final String? title;
	final int? costPk;
	final int? days;
	final DateTime? createdAt;
	final DateTime? updatedAt;

	const Offer({
		this.id, 
		this.providerId, 
		this.title, 
		this.costPk, 
		this.days, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory Offer.fromJson(Map<String, dynamic> json) => Offer(
				id: json['id'] as int?,
				providerId: json['provider_id'] as int?,
				title: json['title'] as String?,
				costPk: json['cost_pk'] as int?,
				days: json['days'] as int?,
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
				'title': title,
				'cost_pk': costPk,
				'days': days,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				providerId,
				title,
				costPk,
				days,
				createdAt,
				updatedAt,
		];
	}
}
