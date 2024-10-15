import 'package:equatable/equatable.dart';

import 'client.dart';

class ClientsModel extends Equatable {
	final List<Client>? clients;

	const ClientsModel({this.clients});

	factory ClientsModel.fromJson(Map<String, dynamic> json) => ClientsModel(
				clients: (json['clients'] as List<dynamic>?)
						?.map((e) => Client.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'clients': clients?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [clients];
}
