import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:weatherapp/models/address_model.dart';

class AddressService {
  Future<List<AddressModel>> getAddress() async {
    final String response = await rootBundle.loadString('assets/regions.json');
    final data = jsonDecode(response);
    List<AddressModel> address = [];

    for (var item in data) {
      address.add(AddressModel.fromJson(item));
    }
    print(address);
    return address;
  }
}
