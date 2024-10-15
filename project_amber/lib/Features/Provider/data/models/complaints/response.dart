import 'package:equatable/equatable.dart';

class Response extends Equatable {
	final int? id;
	final int? complaintId;
	final String? compResponse;
	final DateTime? createdAt;
	final DateTime? updatedAt;

	const Response({
		this.id, 
		this.complaintId, 
		this.compResponse, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory Response.fromJson(Map<String, dynamic> json) => Response(
				id: json['id'] as int?,
				complaintId: json['complaint_id'] as int?,
				compResponse: json['comp_response'] as String?,
				createdAt: json['created_at'] == null
						? null
						: DateTime.parse(json['created_at'] as String),
				updatedAt: json['updated_at'] == null
						? null
						: DateTime.parse(json['updated_at'] as String),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'complaint_id': complaintId,
				'comp_response': compResponse,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				complaintId,
				compResponse,
				createdAt,
				updatedAt,
		];
	}
}
