
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mybookly/Features/home/Data/repos/home_repo_impl.dart';
import 'package:mybookly/Features/home/presentation/manager/cubit/featured_books_cubit.dart';
import 'package:mybookly/Features/home/presentation/manager/cubit/newset_books_cubit.dart';
import 'package:mybookly/constants.dart';

import 'package:mybookly/core/utlis/app_router.dart';
import 'package:mybookly/core/utlis/service_locator.dart';

void main() {
 setup();
  runApp(const BooklyApp());
   
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider( create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks()),
       BlocProvider(  create: (context) =>NewsetBooksCubit(getIt.get<HomeRepoImpl>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
