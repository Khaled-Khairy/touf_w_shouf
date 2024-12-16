part of 'checkout_cubit.dart';

@immutable
sealed class CheckoutState {}

final class CheckoutInitial extends CheckoutState {}
final class CheckoutLoading extends CheckoutState {}
final class CheckoutSuccess extends CheckoutState {
  final CheckoutResponse checkoutResponse;

  CheckoutSuccess(this.checkoutResponse);
}
final class CheckoutFailure extends CheckoutState {
  final String errorMessage;

  CheckoutFailure(this.errorMessage);
}