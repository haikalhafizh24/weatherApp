part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserSucces extends UserState {
  final UserModel user;

  const UserSucces(this.user);

  @override
  List<Object> get props => [user];
}

class UserFailed extends UserState {
  final String error;
  const UserFailed(this.error);
  @override
  List<Object> get props => [error];
}
