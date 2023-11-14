import '../controller/home_container_controller.dart';
import '../models/deliverymanun_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';

// ignore: must_be_immutable
class DeliverymanunItemWidget extends StatelessWidget {
  DeliverymanunItemWidget(
    this.deliverymanunItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DeliverymanunItemModel deliverymanunItemModelObj;

  var controller = Get.find<HomeContainerController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomImageView(
        imagePath: ImageConstant.imgDeliveryManUn,
        height: 172.v,
        width: 341.h,
        radius: BorderRadius.circular(
          15.h,
        ),
      ),
    );
  }
}
