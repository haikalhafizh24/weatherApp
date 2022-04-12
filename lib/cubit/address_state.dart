part of 'address_cubit.dart';

abstract class AddressState extends Equatable {
  const AddressState();

  @override
  List<Object> get props => [];
}

class AddressInitial extends AddressState {}

class AddressLoading extends AddressState {}

class AddressSucces extends AddressState {
  final List<AddressModel> address;

  const AddressSucces(this.address);

  @override
  List<Object> get props => [address];
}

class AddressFailed extends AddressState {
  final String error;

  const AddressFailed(this.error);

  @override
  List<Object> get props => [error];
}
