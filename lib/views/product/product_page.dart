import 'package:e_commerce/constant/value_constant.dart';
import 'package:e_commerce/views/cart/cart_page.dart';
import 'package:e_commerce/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final TextEditingController _searchController = TextEditingController();

  // File? _imageFile;
  //
  // Future getImageFromGallery() async {
  //   final pickedFile =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //
  //   setState(() {
  //     if (pickedFile != null) {
  //       _imageFile = File(pickedFile.path);
  //     }
  //   });
  // }
  //
  // Future getImageFromCamera() async {
  //   final pickedFile =
  //       await ImagePicker().pickImage(source: ImageSource.camera);
  //
  //   setState(() {
  //     if (pickedFile != null) {
  //       _imageFile = File(pickedFile.path);
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appBar(),
            Expanded(
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _appBar() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              textEditingController: _searchController,
            ),
          ),
          const SizedBox(width: marginX2),
          InkWell(
            onTap: () {
              Get.to(() => const CartPage());
            },
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: primaryColor,
            ),
          ),
          // InkWell(
          //   onTap: () {
          //     Get.bottomSheet(
          //       ImagePickerBottomSheet(
          //         cameraPick: getImageFromCamera,
          //         galleryPick: getImageFromGallery,
          //       ),
          //     );
          //   },
          //   child: const Icon(
          //     Icons.camera_alt_outlined,
          //     color: primaryColor,
          //   ),
          // ),
        ],
      ),
    );
  }
}
