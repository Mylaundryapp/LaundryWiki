import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      title: "lbl_home2".tr,
      type: BottomBarEnum.Home2,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      activeIcon: ImageConstant.imgCart,
      title: "lbl_cart".tr,
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBag,
      activeIcon: ImageConstant.imgBag,
      title: "lbl_new_order".tr,
      type: BottomBarEnum.Neworder,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVectorPrimary,
      activeIcon: ImageConstant.imgVectorPrimary,
      title: "lbl_orders".tr,
      type: BottomBarEnum.Orders,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVectorPrimary20x25,
      activeIcon: ImageConstant.imgVectorPrimary20x25,
      title: "lbl_account".tr,
      type: BottomBarEnum.Account,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81.v,
      decoration: BoxDecoration(
        color: appTheme.blueGray10001,
        borderRadius: BorderRadius.circular(
          25.h,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: SizedBox(
                height: 36.v,
                width: 37.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 19.v,
                      width: 25.h,
                      color: theme.colorScheme.primaryContainer,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        right: 7.h,
                        bottom: 17.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 18.v),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          style: CustomTextStyles.labelLargePrimaryContainer
                              .copyWith(
                            color: theme.colorScheme.primaryContainer,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 21.v,
                    width: 25.h,
                    color: appTheme.blueGray900,
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.blueGray900,
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home2,
  Cart,
  Neworder,
  Orders,
  Account,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
