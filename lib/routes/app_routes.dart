import 'package:mylaundryapp/presentation/splash_screen/splash_screen.dart';
import 'package:mylaundryapp/presentation/splash_screen/binding/splash_binding.dart';
import 'package:mylaundryapp/presentation/getting_started_screen/getting_started_screen.dart';
import 'package:mylaundryapp/presentation/getting_started_screen/binding/getting_started_binding.dart';
import 'package:mylaundryapp/presentation/getting_started_two_screen/getting_started_two_screen.dart';
import 'package:mylaundryapp/presentation/getting_started_two_screen/binding/getting_started_two_binding.dart';
import 'package:mylaundryapp/presentation/getting_strated_three_screen/getting_strated_three_screen.dart';
import 'package:mylaundryapp/presentation/getting_strated_three_screen/binding/getting_strated_three_binding.dart';
import 'package:mylaundryapp/presentation/getting_started_four_screen/getting_started_four_screen.dart';
import 'package:mylaundryapp/presentation/getting_started_four_screen/binding/getting_started_four_binding.dart';
import 'package:mylaundryapp/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:mylaundryapp/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:mylaundryapp/presentation/login_screen/login_screen.dart';
import 'package:mylaundryapp/presentation/login_screen/binding/login_binding.dart';
import 'package:mylaundryapp/presentation/register_screen/register_screen.dart';
import 'package:mylaundryapp/presentation/register_screen/binding/register_binding.dart';
import 'package:mylaundryapp/presentation/verifyotp_screen/verifyotp_screen.dart';
import 'package:mylaundryapp/presentation/verifyotp_screen/binding/verifyotp_binding.dart';
import 'package:mylaundryapp/presentation/home_container1_screen/home_container1_screen.dart';
import 'package:mylaundryapp/presentation/home_container1_screen/binding/home_container1_binding.dart';
import 'package:mylaundryapp/presentation/new_order_screen/new_order_screen.dart';
import 'package:mylaundryapp/presentation/new_order_screen/binding/new_order_binding.dart';
import 'package:mylaundryapp/presentation/select_cloth_type_screen/select_cloth_type_screen.dart';
import 'package:mylaundryapp/presentation/select_cloth_type_screen/binding/select_cloth_type_binding.dart';
import 'package:mylaundryapp/presentation/cart_screen/cart_screen.dart';
import 'package:mylaundryapp/presentation/cart_screen/binding/cart_binding.dart';
import 'package:mylaundryapp/presentation/order_details_shipping_payment_screen/order_details_shipping_payment_screen.dart';
import 'package:mylaundryapp/presentation/order_details_shipping_payment_screen/binding/order_details_shipping_payment_binding.dart';
import 'package:mylaundryapp/presentation/checkout_screen/checkout_screen.dart';
import 'package:mylaundryapp/presentation/checkout_screen/binding/checkout_binding.dart';
import 'package:mylaundryapp/presentation/order_confirmed_screen/order_confirmed_screen.dart';
import 'package:mylaundryapp/presentation/order_confirmed_screen/binding/order_confirmed_binding.dart';
import 'package:mylaundryapp/presentation/rating_feedback_screen/rating_feedback_screen.dart';
import 'package:mylaundryapp/presentation/rating_feedback_screen/binding/rating_feedback_binding.dart';
import 'package:mylaundryapp/presentation/orders_screen/orders_screen.dart';
import 'package:mylaundryapp/presentation/orders_screen/binding/orders_binding.dart';
import 'package:mylaundryapp/presentation/order_details_screen/order_details_screen.dart';
import 'package:mylaundryapp/presentation/order_details_screen/binding/order_details_binding.dart';
import 'package:mylaundryapp/presentation/account_one_screen/account_one_screen.dart';
import 'package:mylaundryapp/presentation/account_one_screen/binding/account_one_binding.dart';
import 'package:mylaundryapp/presentation/account_screen/account_screen.dart';
import 'package:mylaundryapp/presentation/account_screen/binding/account_binding.dart';
import 'package:mylaundryapp/presentation/save_address_screen/save_address_screen.dart';
import 'package:mylaundryapp/presentation/save_address_screen/binding/save_address_binding.dart';
import 'package:mylaundryapp/presentation/manage_addresses_screen/manage_addresses_screen.dart';
import 'package:mylaundryapp/presentation/manage_addresses_screen/binding/manage_addresses_binding.dart';
import 'package:mylaundryapp/presentation/location_screen/location_screen.dart';
import 'package:mylaundryapp/presentation/location_screen/binding/location_binding.dart';
import 'package:mylaundryapp/presentation/manage_cards_screen/manage_cards_screen.dart';
import 'package:mylaundryapp/presentation/manage_cards_screen/binding/manage_cards_binding.dart';
import 'package:mylaundryapp/presentation/add_cards_screen/add_cards_screen.dart';
import 'package:mylaundryapp/presentation/add_cards_screen/binding/add_cards_binding.dart';
import 'package:mylaundryapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mylaundryapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String gettingStartedScreen = '/getting_started_screen';

  static const String gettingStartedTwoScreen = '/getting_started_two_screen';

  static const String gettingStratedThreeScreen =
      '/getting_strated_three_screen';

  static const String gettingStartedFourScreen = '/getting_started_four_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String verifyotpScreen = '/verifyotp_screen';

  static const String homeContainerPage = '/home_container_page';

  static const String homeContainer1Screen = '/home_container1_screen';

  static const String newOrderScreen = '/new_order_screen';

  static const String selectClothTypeScreen = '/select_cloth_type_screen';

  static const String cartScreen = '/cart_screen';

  static const String orderDetailsShippingPaymentScreen =
      '/order_details_shipping_payment_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String orderConfirmedScreen = '/order_confirmed_screen';

  static const String ratingFeedbackScreen = '/rating_feedback_screen';

  static const String ordersScreen = '/orders_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String accountOneScreen = '/account_one_screen';

  static const String accountScreen = '/account_screen';

  static const String saveAddressScreen = '/save_address_screen';

  static const String manageAddressesScreen = '/manage_addresses_screen';

  static const String locationScreen = '/location_screen';

  static const String manageCardsScreen = '/manage_cards_screen';

  static const String addCardsScreen = '/add_cards_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: gettingStartedScreen,
      page: () => GettingStartedScreen(),
      bindings: [
        GettingStartedBinding(),
      ],
    ),
    GetPage(
      name: gettingStartedTwoScreen,
      page: () => GettingStartedTwoScreen(),
      bindings: [
        GettingStartedTwoBinding(),
      ],
    ),
    GetPage(
      name: gettingStratedThreeScreen,
      page: () => GettingStratedThreeScreen(),
      bindings: [
        GettingStratedThreeBinding(),
      ],
    ),
    GetPage(
      name: gettingStartedFourScreen,
      page: () => GettingStartedFourScreen(),
      bindings: [
        GettingStartedFourBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: verifyotpScreen,
      page: () => VerifyotpScreen(),
      bindings: [
        VerifyotpBinding(),
      ],
    ),
    GetPage(
      name: homeContainer1Screen,
      page: () => HomeContainer1Screen(),
      bindings: [
        HomeContainer1Binding(),
      ],
    ),
    GetPage(
      name: newOrderScreen,
      page: () => NewOrderScreen(),
      bindings: [
        NewOrderBinding(),
      ],
    ),
    GetPage(
      name: selectClothTypeScreen,
      page: () => SelectClothTypeScreen(),
      bindings: [
        SelectClothTypeBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: orderDetailsShippingPaymentScreen,
      page: () => OrderDetailsShippingPaymentScreen(),
      bindings: [
        OrderDetailsShippingPaymentBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: orderConfirmedScreen,
      page: () => OrderConfirmedScreen(),
      bindings: [
        OrderConfirmedBinding(),
      ],
    ),
    GetPage(
      name: ratingFeedbackScreen,
      page: () => RatingFeedbackScreen(),
      bindings: [
        RatingFeedbackBinding(),
      ],
    ),
    GetPage(
      name: ordersScreen,
      page: () => OrdersScreen(),
      bindings: [
        OrdersBinding(),
      ],
    ),
    GetPage(
      name: orderDetailsScreen,
      page: () => OrderDetailsScreen(),
      bindings: [
        OrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: accountOneScreen,
      page: () => AccountOneScreen(),
      bindings: [
        AccountOneBinding(),
      ],
    ),
    GetPage(
      name: accountScreen,
      page: () => AccountScreen(),
      bindings: [
        AccountBinding(),
      ],
    ),
    GetPage(
      name: saveAddressScreen,
      page: () => SaveAddressScreen(),
      bindings: [
        SaveAddressBinding(),
      ],
    ),
    GetPage(
      name: manageAddressesScreen,
      page: () => ManageAddressesScreen(),
      bindings: [
        ManageAddressesBinding(),
      ],
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: manageCardsScreen,
      page: () => ManageCardsScreen(),
      bindings: [
        ManageCardsBinding(),
      ],
    ),
    GetPage(
      name: addCardsScreen,
      page: () => AddCardsScreen(),
      bindings: [
        AddCardsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
