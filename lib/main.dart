import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/cubits/featured/featured_cubit.dart';
import 'package:bookly/cubits/newset/newset_cubit.dart';
import 'package:bookly/features/constants.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {

  setUp();
  runApp(
    const BooklyApp());

      // باقي آخر فيديوهين
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       
        BlocProvider(
            create: (context) => FeaturedCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBook())
            ,
        BlocProvider(
            create: (context) => NewsetCubit(getIt.get<HomeRepoImpl>())..fetchNewsBook()),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AssetsData.kColor,
        ),
      ),
    );
  }
}
