import 'package:database_cleaner/cubit/delete_table/delete_table_cubit.dart';
import 'package:database_cleaner/cubit/init_list_data_cubit.dart';
import 'package:database_cleaner/cubit/login/login_cubit.dart';
import 'package:database_cleaner/ui/pages/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => InitListDataCubit()),
        BlocProvider(create: (_) => DeleteTableCubit()),
        BlocProvider(create: (_) => LoginCubit())
      ],
      child: ResponsiveSizer(
        builder: (buildContext , orientation , screenType ) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: WelcomePage(),
          );
        },
      ),
    );
  }
}