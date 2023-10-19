import 'package:equatable/equatable.dart';

class BalanceEntity extends Equatable {
  const BalanceEntity({required this.amount, required this.debt});

  final int amount;
  final int debt;

  double get amountFinal => amount / 100;

  @override
  List<Object?> get props => [amount, debt];
}
