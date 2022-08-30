import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixdupe/application/bloc/downloads_bloc.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/domain/core/di/injectable.dart';

import 'package:netflixdupe/presentation/main_page/widgets/screen_main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<DownloadsBloc>(),
        )
      ],
      child: MaterialApp(
          title: 'Netflix App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: AppBarTheme(backgroundColor: Colors.black),
              primarySwatch: Colors.blue,
              backgroundColor: Colors.black,
              scaffoldBackgroundColor: backgroundColor,
              textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white),
              )),
          home: ScreenMainPage()),
    );
  }
}
