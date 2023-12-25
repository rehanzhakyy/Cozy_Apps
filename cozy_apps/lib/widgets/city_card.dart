import "package:cozy_apps/models/city.dart";
import "package:cozy_apps/theme.dart";
import "package:flutter/material.dart";

class CityCard extends StatelessWidget {
  const CityCard(this.city, {super.key});

  final City city;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(children: [
          Stack(
            children: [
              Image.asset(
                city.imageUrl,
                width: 120,
                height: 102,
                fit: BoxFit.cover,
              ),
              city.isPopular ? Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      )),
                  child: Center(
                    child: Image.asset(
                      'assets/images/icon_star.png',
                      width: 22,
                      height: 22,
                    ),
                  ),
                ),
              ) : Container()
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Text(
            city.name,
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );
  }
}
