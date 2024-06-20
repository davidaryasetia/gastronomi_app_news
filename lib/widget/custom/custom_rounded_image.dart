import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class CustomRoundedImage extends StatelessWidget {
  const CustomRoundedImage({super.key, required this.image, this.width, this.height, required this.outlineRounded});
  final String image;
  final double? width;
  final double? height;
  final double outlineRounded;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(outlineRounded)),
      child: Container(
        width: width == null ? Get.width : width,
        height: height == null ? Get.height : height,
        child: FittedBox(
          child: Image.network(image, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      color: Colors.white,
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.warning_rounded,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          Text(
                                            'No Available Image',
                                            style: TextStyle(fontSize: 10, color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }, loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) return child;
                                return SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
                                  ),
                                );
                              }),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
