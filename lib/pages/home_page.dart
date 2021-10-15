import 'package:flutter/material.dart';
import 'package:rifqi_dart_flutter_dev/models/city.dart';
import 'package:rifqi_dart_flutter_dev/theme.dart';
import 'package:rifqi_dart_flutter_dev/widgets/city_card.dart';
import 'package:rifqi_dart_flutter_dev/widgets/space_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              //Note: Title/Header
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
              SizedBox(height: 30),
              //Note: Popular Cities
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Popular Cities',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  )),
              SizedBox(height: 16),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 24),
                    CityCard(City(
                        id: 1, name: "Jakarta", imageUrl: 'assets/city1.png')),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 2,
                        name: "Bandung",
                        imageUrl: 'assets/city2.png',
                        isPopular: true)),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 3, name: "Surabaya", imageUrl: 'assets/city3.png')),
                    SizedBox(width: 24),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //Note: Recomended Space
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Recommended Space',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  )),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [SpaceCard()],
              ),
            ],
          )),
    ));
  }
}
