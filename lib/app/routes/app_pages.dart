import 'package:get/get.dart';

import '../modules/complain/bindings/complain_binding.dart';
import '../modules/complain/views/complain_view.dart';
import '../modules/complain_create/bindings/complain_create_binding.dart';
import '../modules/complain_create/views/complain_create_view.dart';
import '../modules/feedback/bindings/feedback_binding.dart';
import '../modules/feedback/views/feedback_view.dart';
import '../modules/feedback_create/bindings/feedback_create_binding.dart';
import '../modules/feedback_create/views/feedback_create_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/registration/bindings/registration_binding.dart';
import '../modules/registration/views/registration_view.dart';
import '../modules/registration_form2/bindings/registration_form2_binding.dart';
import '../modules/registration_form2/views/registration_form2_view.dart';
import '../modules/scheme/bindings/scheme_binding.dart';
import '../modules/scheme/views/scheme_view.dart';
import '../modules/scheme_create/bindings/scheme_create_binding.dart';
import '../modules/scheme_create/views/scheme_create_view.dart';
import '../modules/scheme_detailed_view/bindings/scheme_detailed_view_binding.dart';
import '../modules/scheme_detailed_view/views/scheme_detailed_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SCHEME,
      page: () => SchemeView(),
      binding: SchemeBinding(),
    ),
    GetPage(
      name: _Paths.SCHEME_DETAILED_VIEW,
      page: () => SchemeDetailedViewView(),
      binding: SchemeDetailedViewBinding(),
    ),
    GetPage(
      name: _Paths.SCHEME_CREATE,
      page: () => SchemeCreateView(),
      binding: SchemeCreateBinding(),
    ),
    GetPage(
      name: _Paths.FEEDBACK,
      page: () =>  FeedbackView(),
      binding: FeedbackBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION_FORM2,
      page: () => RegistrationForm2View(),
      binding: RegistrationForm2Binding(),
    ),
    GetPage(
      name: _Paths.FEEDBACK_CREATE,
      page: () => FeedbackCreateView(),
      binding: FeedbackCreateBinding(),
    ),
    GetPage(
      name: _Paths.COMPLAIN,
      page: () =>  ComplainView(),
      binding: ComplainBinding(),
    ),
    GetPage(
      name: _Paths.COMPLAIN_CREATE,
      page: () =>  ComplainCreateView(),
      binding: ComplainCreateBinding(),
    ),
  ];
}
