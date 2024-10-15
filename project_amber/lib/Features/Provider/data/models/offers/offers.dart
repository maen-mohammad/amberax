import 'package:equatable/equatable.dart';

import 'offer.dart';

class Offers extends Equatable {
	final List<Offer>? offer;

	const Offers({this.offer});

	factory Offers.fromJson(Map<String, dynamic> json) => Offers(
				offer: (json['offer'] as List<dynamic>?)
						?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'offer': offer?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [offer];
}
