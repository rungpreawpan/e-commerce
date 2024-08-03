import 'package:e_commerce/constant/value_constant.dart';
import 'package:e_commerce/widgets/text_font_style.dart';
import 'package:flutter/material.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  final Function() cameraPick;
  final Function() galleryPick;

  const ImagePickerBottomSheet({
    super.key,
    required this.cameraPick,
    required this.galleryPick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _card(
                onTap: cameraPick,
                icon: Icons.camera_alt_rounded,
                title: 'Camera'),
            _card(
              onTap: galleryPick,
              icon: Icons.image,
              title: 'Gallery',
            ),
          ],
        ),
      ),
    );
  }

  _card({
    required Function() onTap,
    required IconData icon,
    required String title,
  }) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon),
        title: TextFontStyle(
          title,
          size: fontSizeM,
          weight: FontWeight.bold,
        ),
      ),
    );
  }
}
