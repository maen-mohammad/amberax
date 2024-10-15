import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Accountant/presentation/views/accountant_view.dart';
import 'package:project_amber/Features/Collection/presentation/views/collection_view.dart';
import 'package:project_amber/Features/Collection/presentation/views/list_subscribers_collection_view.dart';
import 'package:project_amber/Features/Collection/presentation/views/widgets/Invoices_subscriber_view.dart';
import 'package:project_amber/Features/Collection/presentation/views/widgets/details_collection.dart';
import 'package:project_amber/Features/Collection/presentation/views/widgets/invoices_collection_view.dart';
import 'package:project_amber/Features/Collection/presentation/views/widgets/notficaions_collection_view_body.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/info_subscriber_view.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/list_subscribers_maintenance_view.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/maintenance_view.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/notficaions_maintenance_view_body.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/orders_subsrcibe_view.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/widgets/details_maintenance.dart';
import 'package:project_amber/Features/Provider/presentation/views/Invoices_provider_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/add_subscriber_.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/provider_details.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/provider_edite_details.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_employee/employees_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/list_complaints_provider_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/list_orders_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/list_subscribers_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_employee/new_employee.dart';
import 'package:project_amber/Features/Provider/presentation/views/notfications_provider_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/provider_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/offers_provider_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/subscriber_details.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/subscriber_request.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_accountant/accountant_request.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_accountant/work_accountant_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_accountant/accountant_details.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_collection/collection_details.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_collection/collection_request.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_collection/work_collection_view.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_maintenance/maintenance_details.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_maintenance/maintenance_request.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_maintenance/work_maintenance_view.dart';

import 'package:project_amber/Features/Subscriber/presentation/views/list_providers_view.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/notfications_subscriber_view.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/Invoices_view.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/list_complaints_view_body.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/offers_view.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/provider_details.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/request_subscription.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/subscriber_details.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/widgets_body_subscriber/subscriber_view_body.dart';
import 'package:project_amber/Features/auth/presentation/views/otp_view.dart';
import 'package:project_amber/Features/auth/presentation/views/splash_view.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_forget_password/enter_password_view.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_forget_password/forget_password_view_body.dart';
import 'package:project_amber/Features/home/presentation/views/home_view.dart';
import 'package:project_amber/Features/move.dart';

import '../../Features/auth/presentation/views/login_view.dart';
import '../../Features/auth/presentation/views/on_bording.dart';
import '../../Features/auth/presentation/views/sign_up_view.dart';
// import 'package:project_amber/Features/language/presentation/views/language.dart';
// import 'package:project_amber/Features/login/presentation/views/login_view.dart';
// import 'package:project_amber/Features/onBording/presentation/views/on_bording.dart';
// import 'package:project_amber/Features/signup/presentation/views/sign_up_view.dart';
// import 'package:project_amber/Features/auth/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kSplahView = '/';
  //Auth
  static const String kLanguage = '/languageView';
  static const String kOnBording = '/onBordingView';
  static const String kLoginView = '/loginView';
  static const String kForgetPasswordView = '/forgetPasswordView';
  static const String kEnterPasswordViewBody = '/enterPasswordViewBody';
  static const String ksignUpView = '/sinUpView';
  static const String kOptView = '/optView';

  //home
  static const String kHomeView = '/homeView';

  //Subscriber Views
  static const String kSubscriberView = '/subscriberView';
  static const String kListProvidersView = '/listProvidersView';
  static const String kProvidersDetailsView = '/providersDetailsView';
  static const String kRequestSubscription = '/requestSubscription';
  static const String kListComplaintsViewBody = '/listComplaintsViewBody';
  static const String kCommentsView = '/commentsView';
  static const String kInvoicesView = '/invoicesView';
  static const String kOffersView = '/offersView';
  static const String kNotficaionsSubscriberView = '/notficaionsSubscriberView';
  static const String kSubscriberDetailsView = '/subscriberDetailsView';

  //   Provider Views
  static const String kProviderView = '/providerView';
  static const String kListSubscribersView = '/listSubscribersView';
  static const String kSubscriberDetails = '/subscriberDetails';
  static const String kSubscriberRequest = '/subscriberRequest';
  static const String kAddSubscriber = '/addSubscriber';
  static const String kNotficaionsProviderView = '/notficaionsProviderView';
  static const String kListOrderssView = '/listOrderssView';
  static const String kInvoicesProviderView = '/invoicesProviderView';
  static const String kListComplaintsProviderView =
      '/listComplaintsProviderView';
  static const String kReplayView = '/replayView';
  static const String kOffersProviderView = '/offersProviderView';
  static const String kEmployeesView = '/employeesView';
  static const String kNewEmployee = '/newEmployee';
  static const String kProvidersDetails = '/providersDetails';
  static const String kProvidersEditeDetailsView = '/providersEditeDetailsView';

  static const String kAccountantDetails = '/accountantDetails';
  static const String kWorkAccountantView = '/workAccountantView';
  static const String kAccountantRequest = '/accountantRequest';

  static const String kCollectorDetails = '/collectionDetails';
  static const String kWorkCollectorView = '/workCollectionView';
  static const String kCollectorRequest = '/collectionRequest';

  static const String kMaintenanceDetails = '/maintenanceDetails';
  static const String kWorkMaintenanceView = '/workMaintenanceView';
  static const String kMaintenanceRequest = '/maintenanceRequest';

  //   Maintenance   Views
  static const String kMaintenanceView = '/maintenanceView';
  static const String kListSubscribersMaintenanceView =
      '/listSubscribersMaintenanceView';
  static const String kInfoSubscriberView = '/infoSubscriberView';
  static const String kNotficaionsMaintenanceViewBody =
      '/notficaionsMaintenanceViewBody';
  static const String kOrdersSubsrcibeView = '/ordersSubsrcibeView';
  static const String kDetailsMaintenance = '/detailsMaintenance';

  //   Accountant  Views
  static const String kAccountantView = '/accountantView';

  //   Collection  Views
  static const String kCollectorView = '/collectionView';
  static const String kNotficaionsCollectionViewBody =
      '/notficaionsCollectionViewBody';
  static const String kInvoicesCollectionView = '/invoicesCollectionView';
  static const String kListSubscribersCollectionView =
      '/listSubscribersCollectionView';
  static const String kInvoicesSubscriberView = '/invoicesSubscriberView';
  static const String kDetailsCollection = '/detailsCollection';

  // Move To Views

  static const String kMove = '/move';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: kSplahView,
      builder: (BuildContext context, GoRouterState state) {
        return const SpalshView();
      },
    ),

    //Auth ..............................

    GoRoute(
      path: kOnBording,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBordingView();
      },
    ),
    GoRoute(
      path: kLoginView,
      builder: (BuildContext context, GoRouterState state) {
        return LoginView();
      },
    ),
    GoRoute(
      path: kForgetPasswordView,
      builder: (BuildContext context, GoRouterState state) {
        return ForgotPasswordViewBody();
      },
    ),
    GoRoute(
      path: kEnterPasswordViewBody,
      builder: (BuildContext context, GoRouterState state) {
        return EnterPasswordViewBody();
      },
    ),
    GoRoute(
      path: ksignUpView,
      builder: (BuildContext context, GoRouterState state) {
        return SignUpView();
      },
    ),
    GoRoute(
      path: kOptView,
      builder: (BuildContext context, GoRouterState state) {
        return OtpView();
      },
    ),

    //    Provider Views
    GoRoute(
      path: kProviderView,
      builder: (BuildContext context, GoRouterState state) {
        return ProviderView();
      },
    ),
    GoRoute(
      path: kListSubscribersView,
      builder: (BuildContext context, GoRouterState state) {
        return ListSubscribersView();
      },
    ),
    // GoRoute(
    //   path: kSubscriberDetails,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return SubscriberDetails();
    //   },
    // ),
    // GoRoute(
    //   path: kSubscriberRequest,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return SubscriberRequest();
    //   },
    // ),
    //   GoRoute(
    //   path: kAddSubscriber,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return  AddSubscriber();
    //   },
    // ),
    GoRoute(
      path: kNotficaionsProviderView,
      builder: (BuildContext context, GoRouterState state) {
        return NotficaionsProviderView();
      },
    ),
    GoRoute(
      path: kListOrderssView,
      builder: (BuildContext context, GoRouterState state) {
        return ListOrderssView();
      },
    ),
    GoRoute(
      path: kInvoicesProviderView,
      builder: (BuildContext context, GoRouterState state) {
        return InvoicesProviderView();
      },
    ),

    GoRoute(
      path: kListComplaintsProviderView,
      builder: (BuildContext context, GoRouterState state) {
        return ListComplaintsProviderView();
      },
    ),

    GoRoute(
      path: kOffersProviderView,
      builder: (BuildContext context, GoRouterState state) {
        return OffersProviderView();
      },
    ),
    GoRoute(
      path: kEmployeesView,
      builder: (BuildContext context, GoRouterState state) {
        return EmployeesView();
      },
    ),
    GoRoute(
      path: kWorkAccountantView,
      builder: (BuildContext context, GoRouterState state) {
        return WorkAccountantView();
      },
    ),
    // GoRoute(
    //   path: kAccountantDetails,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return AccountantDetails();
    //   },
    // ),
    // GoRoute(
    //   path: kAccountantRequest,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return AccountantRequest();
    //   },
    // ),
    GoRoute(
      path: kNewEmployee,
      builder: (BuildContext context, GoRouterState state) {
        return NewEmployee();
      },
    ),
    GoRoute(
      path: kCollectorDetails,
      builder: (BuildContext context, GoRouterState state) {
        return CollectionDetails();
      },
    ),
    GoRoute(
      path: kWorkCollectorView,
      builder: (BuildContext context, GoRouterState state) {
        return WorkCollectionView();
      },
    ),
    GoRoute(
      path: kCollectorRequest,
      builder: (BuildContext context, GoRouterState state) {
        return CollectionRequest();
      },
    ),
    GoRoute(
      path: kMaintenanceDetails,
      builder: (BuildContext context, GoRouterState state) {
        return MaintenanceDetails();
      },
    ),
    GoRoute(
      path: kWorkMaintenanceView,
      builder: (BuildContext context, GoRouterState state) {
        return WorkMaintenanceView();
      },
    ),
    GoRoute(
      path: kMaintenanceRequest,
      builder: (BuildContext context, GoRouterState state) {
        return MaintenanceRequest();
      },
    ),
    // GoRoute(
    //   path: kProvidersEditeDetailsView,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return ProvidersEditeDetailsView();
    //   },
    // ),

    GoRoute(
      path: kProvidersDetails,
      builder: (BuildContext context, GoRouterState state) {
        return ProvidersDetails();
      },
    ),

    //Subscriber Views .......................
    GoRoute(
      path: kSubscriberView,
      builder: (BuildContext context, GoRouterState state) {
        return SubscriberViewBody();
      },
    ),
    GoRoute(
      path: kListProvidersView,
      builder: (BuildContext context, GoRouterState state) {
        return ListProvidersView();
      },
    ),
    GoRoute(
      path: kProvidersDetailsView,
      builder: (BuildContext context, GoRouterState state) {
        return ProvidersDetailsView();
      },
    ),
    GoRoute(
      path: kRequestSubscription,
      builder: (BuildContext context, GoRouterState state) {
        return RequestSubscription();
      },
    ),
    GoRoute(
      path: kListComplaintsViewBody,
      builder: (BuildContext context, GoRouterState state) {
        return ListComplaintsViewBody();
      },
    ),

    GoRoute(
      path: kInvoicesView,
      builder: (BuildContext context, GoRouterState state) {
        return InvoicesView();
      },
    ),
    GoRoute(
      path: kOffersView,
      builder: (BuildContext context, GoRouterState state) {
        return OffersView();
      },
    ),

    GoRoute(
      path: kNotficaionsSubscriberView,
      builder: (BuildContext context, GoRouterState state) {
        return NotficaionsSubscriberView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (BuildContext context, GoRouterState state) {
        return HomeView();
      },
    ),
    GoRoute(
      path: kSubscriberDetailsView,
      builder: (BuildContext context, GoRouterState state) {
        return SubscriberDetailsView();
      },
    ),

    //    Maintenance Views
    GoRoute(
      path: kMaintenanceView,
      builder: (BuildContext context, GoRouterState state) {
        return MaintenanceView();
      },
    ),
    GoRoute(
      path: kListSubscribersMaintenanceView,
      builder: (BuildContext context, GoRouterState state) {
        return ListSubscribersMaintenanceView();
      },
    ),
    GoRoute(
      path: kInfoSubscriberView,
      builder: (BuildContext context, GoRouterState state) {
        return InfoSubscriberView();
      },
    ),
    GoRoute(
      path: kNotficaionsMaintenanceViewBody,
      builder: (BuildContext context, GoRouterState state) {
        return NotficaionsMaintenanceViewBody();
      },
    ),
    GoRoute(
      path: kOrdersSubsrcibeView,
      builder: (BuildContext context, GoRouterState state) {
        return OrdersSubsrcibeView();
      },
    ),
    GoRoute(
      path: kDetailsMaintenance,
      builder: (BuildContext context, GoRouterState state) {
        return DetailsMaintenance();
      },
    ),

    //    Accountant Views
    GoRoute(
      path: kAccountantView,
      builder: (BuildContext context, GoRouterState state) {
        return AccountantView();
      },
    ),

    //    Collection Views
    GoRoute(
      path: kCollectorView,
      builder: (BuildContext context, GoRouterState state) {
        return CollectionView();
      },
    ),
    GoRoute(
      path: kNotficaionsCollectionViewBody,
      builder: (BuildContext context, GoRouterState state) {
        return NotficaionsCollectionViewBody();
      },
    ),
    GoRoute(
      path: kInvoicesCollectionView,
      builder: (BuildContext context, GoRouterState state) {
        return InvoicesCollectionView();
      },
    ),
    GoRoute(
      path: kListSubscribersCollectionView,
      builder: (BuildContext context, GoRouterState state) {
        return ListSubscribersCollectionView();
      },
    ),
    GoRoute(
      path: kInvoicesSubscriberView,
      builder: (BuildContext context, GoRouterState state) {
        return InvoicesSubscriberView();
      },
    ),
    GoRoute(
      path: kDetailsCollection,
      builder: (BuildContext context, GoRouterState state) {
        return DetailsCollection();
      },
    ),

    // Move To Views
    GoRoute(
      path: kMove,
      builder: (BuildContext context, GoRouterState state) {
        return Move();
      },
    ),
  ]);
}
