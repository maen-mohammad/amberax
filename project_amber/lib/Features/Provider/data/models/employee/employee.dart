import 'package:equatable/equatable.dart';

import 'employe.dart';

class Employee extends Equatable {
	final List<Employe>? employes;

	const Employee({this.employes});

	factory Employee.fromJson(Map<String, dynamic> json) => Employee(
				employes: (json['employes'] as List<dynamic>?)
						?.map((e) => Employe.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'employes': employes?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [employes];
}
