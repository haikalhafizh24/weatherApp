import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weatherapp/models/user_model.dart';
import 'package:weatherapp/services/user_service.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void setUser({
    required String name,
    required String provinsi,
    required String kota,
  }) async {
    emit(UserLoading());

    UserModel user = await UserService().setUser(
      name: name,
      provinsi: provinsi,
      kota: kota,
    );

    emit(UserSucces(user));
  }
}
