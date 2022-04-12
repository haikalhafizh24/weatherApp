import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class FormFieldCustom extends StatelessWidget {
  String title;
  String hint;
  FormFieldCustom({
    Key? key,
    required this.title,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: hint,
              fillColor: kBackgroundColor,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  width: 2,
                  color: kWhiteColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
