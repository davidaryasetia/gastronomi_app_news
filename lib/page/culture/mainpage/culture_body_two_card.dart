import 'package:flutter/material.dart';
import 'package:gastronomy/model/culture.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';

class CultureBodyTwoCard extends StatelessWidget {
  final Culture cultures;

  const CultureBodyTwoCard({super.key, required this.cultures});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(children: [
        Container(
          height: 272.35,
          width: 327.33,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.network('https://admin-gastronomi.projectbase.site' +
                cultures.photoPath),
          ),
        ),
        Container(
          height: 272.35,
          width: 327.33,
          padding: EdgeInsets.only(left: 20, bottom: 20),
          color: Colors.black.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(cultures.nameCulture).nunito20b().white(),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        color: OGoodGreen, shape: BoxShape.circle),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 9,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      height: 65.97,
                      width: 287.58,
                      child: Text(
                        "Gendang Beleq adalah alat musik tradisional yang dimainkan secara berkelompok. ndonesia.",
                        maxLines: 3,
                      ).nunito15s().white()),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
