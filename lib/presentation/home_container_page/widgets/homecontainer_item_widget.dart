import '../controller/home_container_controller.dart';
import '../models/homecontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';

// ignore: must_be_immutable
class HomecontainerItemWidget extends StatelessWidget {
  HomecontainerItemWidget(
    this.homecontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomecontainerItemModel homecontainerItemModelObj;

  var controller = Get.find<HomeContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 13.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Obx(
              () => CustomImageView(
                imagePath: homecontainerItemModelObj.image!.value,
                height: 60.v,
                width: 63.h,
                margin: EdgeInsets.only(left: 1.h),
              ),
            ),
            SizedBox(height: 6.v),
            Container(
              width: 66.h,
              margin: EdgeInsets.only(left: 1.h),
              child: Obx(
                () => Text(
                  homecontainerItemModelObj.washingDryCleaning!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
