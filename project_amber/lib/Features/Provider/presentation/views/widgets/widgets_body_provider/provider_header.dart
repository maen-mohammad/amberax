import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/auth/presentation/view_models/auth/auth_cubit.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ProviderHeader extends StatelessWidget {
  const ProviderHeader({
    Key? key,
  }) : super(key: key);
  final numOfitem = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: AppColor.kWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is AuthSuccessState) {
              return TextField(
                  textAlign: TextAlign.right,
                  readOnly: true,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: state.loginModel.user?.name,
                      hintStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.archive,
                          color: AppColor.kOrang,
                        ),
                        onPressed: () {
                          GoRouter.of(context)
                              .push(AppRouter.kProvidersDetails);
                        },
                      )));
            }
            return Text('شركة الامان');
          },
        ),
      ),
    );
  }
}
