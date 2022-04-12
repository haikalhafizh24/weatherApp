import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/cubit/address_cubit.dart';
import 'package:weatherapp/cubit/user_cubit.dart';
import 'package:weatherapp/shared/theme.dart';
import 'package:weatherapp/ui/widgets/form_field_custom.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/address_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController nameController = TextEditingController(text: '');
  @override
  void initState() {
    // TODO: implement initState
    context.read<AddressCubit>().getAddress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String province = '';
    String city = '';
    List filtered = [];
    Widget header(List<AddressModel> address) {
      return Container(
        margin: EdgeInsets.only(
          top: 100,
          right: defaultMargin,
          left: defaultMargin,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kWhiteColor),
        child: Column(
          children: [
            Text(
              'Masukkan data diri',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            FormFieldCustom(
              title: 'Nama Lengkap',
              hint: 'Nama Lengkapmu',
              controller: nameController,
            ),
            DropdownSearch(
              // ignore: avoid_types_as_parameter_names
              items: address.map((AddressModel address) {
                return address.provinsi;
              }).toList(),
              onChanged: (value) => setState(() {
                value = province;
                // ignore: avoid_print
                print(province);
              }),
              dropdownSearchDecoration: InputDecoration(
                hintText: 'Pilih Provinsi',
                fillColor: kWhiteColor,
              ),
            ),
            DropdownSearch(
              items: address.map((AddressModel address) {
                return address.kota
                    .where(
                      (element) => address.provinsi.toLowerCase().contains(
                            province.toLowerCase(),
                          ),
                    )
                    .toList();
              }).toList(),
              onChanged: (value) => setState(() {
                value = city;
              }),
              dropdownSearchDecoration: InputDecoration(
                hintText: 'Pilih Kota',
                fillColor: kWhiteColor,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            BlocBuilder<UserCubit, UserState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail');
                    context.read<UserCubit>().setUser(
                          name: nameController.text,
                          provinsi: province,
                          kota: city,
                        );
                  },
                  child: Text(
                    'Lihat Cuaca',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: kPrimaryColor,
                    fixedSize: Size(
                      240,
                      55,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: BlocConsumer<AddressCubit, AddressState>(
        listener: (context, state) {
          if (state is AddressFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is AddressSucces) {
            return Scaffold(
              backgroundColor: kPrimaryColor,
              body: ListView(
                children: [
                  header(state.address),
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
