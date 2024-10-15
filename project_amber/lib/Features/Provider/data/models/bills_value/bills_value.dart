import 'package:equatable/equatable.dart';

import 'bill.dart';

class BillsValue extends Equatable {
	final int? billsCount;
	final int? totalBillsCost;
	final int? paidAmount;
	final List<Bill>? bills;

	const BillsValue({
		this.billsCount, 
		this.totalBillsCost, 
		this.paidAmount, 
		this.bills, 
	});

	factory BillsValue.fromJson(Map<String, dynamic> json) => BillsValue(
				billsCount: json['bills_count'] as int?,
				totalBillsCost: json['total_bills_cost'] as int?,
				paidAmount: json['paid_amount'] as int?,
				bills: (json['bills'] as List<dynamic>?)
						?.map((e) => Bill.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'bills_count': billsCount,
				'total_bills_cost': totalBillsCost,
				'paid_amount': paidAmount,
				'bills': bills?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props {
		return [
				billsCount,
				totalBillsCost,
				paidAmount,
				bills,
		];
	}
}
