import 'package:flutter/material.dart';
import 'package:weatherapp/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kPrimaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Pagi',
              style: whiteTextStyle,
            ),
            Text(
              'Haikal Hafizh',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_city_rounded,
                  color: kWhiteColor,
                  size: 20,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Depok, Jawa Barat',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/sun.png',
                        width: 120,
                        height: 120,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        '24°c',
                        style: whiteTextStyle.copyWith(
                          fontSize: 60,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Berawan',
                    style: whiteTextStyle.copyWith(
                        fontSize: 20, fontWeight: light),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget listWeather() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Perkiraan Cuaca',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15,
                ),
                color: kWhiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Senin',
                        style: blackTextStyle,
                      ),
                      SizedBox(height: 8),
                      Text(
                        '20/11',
                        style: greyTextStyle,
                      )
                    ],
                  ),
                  Text(
                    '24°c',
                    style: primaryTextStyle.copyWith(
                      fontSize: 40,
                      fontWeight: bold,
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/sun.png',
                        width: 34,
                        height: 34,
                      ),
                      Text(
                        'Berawan',
                        style: blackTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
          children: [
            header(),
            listWeather(),
          ],
        ),
      ),
    );
  }
}
