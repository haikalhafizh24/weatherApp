import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String name;
  final String provinsi;
  final String kota;

  const UserModel({
    required this.name,
    required this.kota,
    required this.provinsi,
  });

  @override
  List<Object> get props => throw UnimplementedError();
}
