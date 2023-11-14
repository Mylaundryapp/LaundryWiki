import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAbelDeeppurpleA200 =>
      theme.textTheme.bodyLarge!.abel.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get bodyLargeAbelDeeppurpleA20019 =>
      theme.textTheme.bodyLarge!.abel.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 19.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumAbelOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.abel.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumAlataBluegray800 =>
      theme.textTheme.bodyMedium!.alata.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyMediumAlataOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.alata.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.5),
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumIndigoA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA200,
      );
  static get bodyMediumInterOnErrorContainer =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInterOnPrimary =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.42),
        fontSize: 14.fSize,
      );
  static get bodySmallAlataBlack900 =>
      theme.textTheme.bodySmall!.alata.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallAlataIndigoA700 =>
      theme.textTheme.bodySmall!.alata.copyWith(
        color: appTheme.indigoA700,
      );
  static get bodySmallAlataOnPrimaryContainer =>
      theme.textTheme.bodySmall!.alata.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.5),
      );
  static get bodySmallAlataRed500 => theme.textTheme.bodySmall!.alata.copyWith(
        color: appTheme.red500,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.87),
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.38),
      );
  static get bodySmallGray600dd => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600Dd,
      );
  static get bodySmallGreen700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green700,
        fontSize: 10.fSize,
      );
  static get bodySmallGreen700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green700,
      );
  static get bodySmallIndigoA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA700,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallPonnalaBluegray800 =>
      theme.textTheme.bodySmall!.ponnala.copyWith(
        color: appTheme.blueGray800,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsErrorContainer10 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsIndigo500 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo500,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPoppinsRed800 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.red800,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeDeeporange300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrange300,
      );
  static get labelLargeGray600dd => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600Dd,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeIndigo900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeIndigoA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLightblueA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlueA200,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get labelLargeOnErrorContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelMediumBluegray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelMediumErrorContainer => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 11.fSize,
      );
  static get labelMediumGray500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get labelMediumIndigoA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigoA700,
        fontSize: 11.fSize,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallIndigoA200 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.indigoA200,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.5),
      );
  static get titleLargePoppinsOnErrorContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRed800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red800,
      );
  static get titleLargeRobotoBlack900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.87),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoBlack900Bold =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.87),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumDeeporange300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrange300,
      );
  static get titleMediumIndigo500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo500,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBluegray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterOnErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumRed800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red800,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get titleSmallInterBluegray900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoBlack900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get alata {
    return copyWith(
      fontFamily: 'Alata',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get abel {
    return copyWith(
      fontFamily: 'Abel',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get ponnala {
    return copyWith(
      fontFamily: 'Ponnala',
    );
  }
}
