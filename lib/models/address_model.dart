import 'package:equatable/equatable.dart';

class AddressModel extends Equatable {
  final String provinsi;
  final List<String> kota;

  const AddressModel({
    this.provinsi = '',
    required this.kota,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        provinsi: json['provinsi'],
        kota: List<String>.from(json['kota'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'provinsi': provinsi,
        'kota': List<String>.from(kota.map((x) => x)),
      };

  @override
  List<Object> get props => [
        provinsi,
        kota,
      ];
}
