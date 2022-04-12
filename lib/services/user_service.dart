import '../models/user_model.dart';

class UserService {
  Future<UserModel> setUser({
    required String name,
    required String provinsi,
    required String kota,
  }) async {
    return UserModel(
      name: name,
      kota: kota,
      provinsi: provinsi,
    );
  }
}
