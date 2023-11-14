import '../controller/new_order_controller.dart';
import '../models/neworder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';

// ignore: must_be_immutable
class NeworderItemWidget extends StatelessWidget {
  NeworderItemWidget(
    this.neworderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NeworderItemModel neworderItemModelObj;

  var controller = Get.find<NewOrderController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 40.h,
                      right: 5.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            neworderItemModelObj.listTitle!.value,
                            style:
                                CustomTextStyles.titleLargeRobotoBlack900Bold,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(top: 2.v),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Divider(),
              ],
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: neworderItemModelObj.innerWears!.value,
              height: 25.v,
              width: 23.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 1.h),
            ),
          ),
        ],
      ),
    );
  }
}
