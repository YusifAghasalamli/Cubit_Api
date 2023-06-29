import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/data/cubit/postlist/post_list_cubit.dart';
import 'package:to_do/presentation/screens/tabs_screen/tabs_screen.dart';

import 'utils/routers.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PostListCubit()..getPostListData(),
          ),
        ],
        child: const TabsScreen(),
      ),
      onGenerateRoute: (settings) => Routers.generateRoute(settings),
    );
  }
}


//..mapFetchListEventToState(),
          // PostListBloc(),
          // create: (context) => PostListBloc()..add(PostListFetchEvent()),
          // PostListBloc()..mapFetchListEventToState(),