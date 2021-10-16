import 'package:flutter/material.dart';
import 'package:rifqi_dart_flutter_dev/models/city.dart';
import 'package:rifqi_dart_flutter_dev/models/space.dart';
import 'package:rifqi_dart_flutter_dev/models/tips.dart';
import 'package:rifqi_dart_flutter_dev/theme.dart';
import 'package:rifqi_dart_flutter_dev/widgets/city_card.dart';
import 'package:rifqi_dart_flutter_dev/widgets/space_card.dart';
import 'package:rifqi_dart_flutter_dev/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
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

              Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Column(
                    children: [
                      SpaceCard(
                        Space(
                            id: 1,
                            name: 'Kuretakeso Hott',
                            imageUrl: 'assets/space1.png',
                            price: 52,
                            city: 'Bandung',
                            country: 'Germany',
                            rating: 4),
                      ),
                      SizedBox(height: 30),
                      SpaceCard(
                        Space(
                            id: 2,
                            name: 'Roemah Nenek',
                            imageUrl: 'assets/space2.png',
                            price: 11,
                            city: 'Seattle',
                            country: 'Bogor',
                            rating: 5),
                      ),
                      SizedBox(height: 30),
                      SpaceCard(
                        Space(
                            id: 3,
                            name: 'Darrling How',
                            imageUrl: 'assets/space3.png',
                            price: 20,
                            city: 'Jakarta',
                            country: 'Indonesia',
                            rating: 3),
                      )
                    ],
                  )),
              SizedBox(height: 30),
              //NOTE:Tips & Guidance
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Tips & Guidance',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  )),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(Tips(
                        id: 1,
                        title: 'City Guidelines',
                        imageUrl: "assets/tips1.png",
                        updatedAt: "20 Apr")),
                    SizedBox(height: 20),
                    TipsCard(Tips(
                        id: 2,
                        title: 'Jakarta Fairship',
                        imageUrl: "assets/tips2.png",
                        updatedAt: "11 Dec"))
                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
