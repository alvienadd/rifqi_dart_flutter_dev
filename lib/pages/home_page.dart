import 'package:flutter/material.dart';
import 'package:rifqi_dart_flutter_dev/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Explore Now',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  )),
              SizedBox(
                height: 2,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Mencari kosan yang cozy',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
              SizedBox(height: 30)
            ],
          )),
    ));
  }
}
