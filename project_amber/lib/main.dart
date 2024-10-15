import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_amber/Features/Provider/data/repo/provider_repo_impl.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/add%20employee%20cubit/addemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/add%20offer%20cubit/addoffer_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/add%20response%20cubit/addresponse_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/complet%20req%20cubit/complet_req_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/delete%20client%20cubit/deletclient_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/edit%20client%20cubit/editclient_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/edit%20employee%20cubit/editemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/edit%20info%20cubit/editinfo_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20biils%20cubit/getbills_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20clients%20cubit/get_clients_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20complaints%20cubit/getcomplanints_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20employee%20cubit/getemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20offers/getoffers_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/request%20cubit/get_request_cubit.dart';
import 'package:project_amber/Features/auth/data/repos/repos_auth_impl.dart';
import 'package:project_amber/Features/auth/presentation/view_models/auth/auth_cubit.dart';
import './core/utlites/app_router.dart';

void main() {
  runApp(const AmberApp());
}

class AmberApp extends StatelessWidget {
  const AmberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(RepositoryAuthImpl()),
        ),
        BlocProvider(
          create: (context) => GetRequestCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => CompletReqCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => GetClientsCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => EditclientCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => DeletclientCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => AddemployeeCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => GetoffersCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => AddofferCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => GetcomplanintsCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => AddresponseCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => GetbillsCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => EditinfoCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => EditemployeeCubit(ProviderRepoImpl()),
        ),
        BlocProvider(
          create: (context) => GetemployeeCubit(ProviderRepoImpl()),
        ),
      ],
      child: MaterialApp.router(
        title: "AMBER",
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
