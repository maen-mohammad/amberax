import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20clients%20cubit/get_clients_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20complaints%20cubit/getcomplanints_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20employee%20cubit/getemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20offers/getoffers_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/request%20cubit/get_request_cubit.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        'icon': "assets/icons/Flash Icon.svg",
        'text': "المشتركين",
        'press': () {
          BlocProvider.of<GetClientsCubit>(context).clients();

          GoRouter.of(context).push(AppRouter.kListSubscribersView);
        },
      },
      {
        "icon": "assets/icons/Discover.svg",
        "text": "الطلبات",
        "press": () {
          BlocProvider.of<GetRequestCubit>(context).requests();
          GoRouter.of(context).push(AppRouter.kListOrderssView);
        },
      },
      {
        "icon": "assets/icons/Bill Icon.svg",
        "text": "الفواتير",
        "press": () {
          GoRouter.of(context).push(AppRouter.kInvoicesProviderView);
        },
      },
      {
        "icon": "assets/icons/Gift Icon.svg",
        "text": "الشكاوي",
        "press": () {
          BlocProvider.of<GetcomplanintsCubit>(context).getcomplaints();
          GoRouter.of(context).push(AppRouter.kListComplaintsProviderView);
        },
      },
      {
        "icon": "assets/icons/Gift Icon.svg",
        "text": "العروض",
        "press": () {
          BlocProvider.of<GetoffersCubit>(context).getOffers();
          GoRouter.of(context).push(AppRouter.kOffersProviderView);
        },
      },
      {
        "icon": "assets/icons/Parcel.svg",
        "text": "الموظفين",
        "press": () {
          BlocProvider.of<GetemployeeCubit>(context).employee();
          GoRouter.of(context).push(AppRouter.kEmployeesView);
        },
      },
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        categories.length,
        (index) => CategoryCard(
          icon: categories[index]["icon"],
          text: categories[index]["text"],
          press: categories[index]["press"],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .14,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all((10)),
                height: (50),
                width: (50),
                decoration: BoxDecoration(
                  // color: Color(0xFFFFECDF),
                  color: AppColor.kOrang,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon!),
              ),
              SizedBox(height: 5),
              Text(
                text!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }
}
