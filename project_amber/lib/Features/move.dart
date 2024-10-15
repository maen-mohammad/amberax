import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_amber/Features/Collection/presentation/views/collection_view.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/maintenance_view.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20biils%20cubit/getbills_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/provider_view.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/subscriber_view.dart';
import 'package:project_amber/Features/auth/presentation/view_models/auth/auth_cubit.dart';
import 'package:project_amber/core/user/user_data.dart';

class Move extends StatelessWidget {
  const Move({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is AuthSuccessState) {
            UserData.myUser.token = state.loginModel.accessToken!;
            if (state.loginModel.userType == "provider") {
              BlocProvider.of<GetbillsCubit>(context).getbills();
              return ProviderView();
            } else if (state.loginModel.userType == "subscriber") {
              return SubscriberView();
            } else if (state.loginModel.userType == "collector") {
              return CollectionView();
            } else if (state.loginModel.userType == "maintenance") {
              return MaintenanceView();
            }
          } else if (state is AuthFailureState) {
            return Center(
              child: Text(state.error),
            );
          }
          return ProviderView();
        },
      ),
    );
  }
}
