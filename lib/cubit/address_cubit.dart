import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weatherapp/models/address_model.dart';
import 'package:weatherapp/services/address_service.dart';

part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit() : super(AddressInitial());

  void getAddress() async {
    try {
      emit(AddressLoading());

      List<AddressModel> address = await AddressService().getAddress();

      emit(AddressSucces(address));
    } catch (e) {
      emit(AddressFailed(e.toString()));
    }
  }
}
