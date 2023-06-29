import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/data/cubit/commentlist/comment_list_cubit.dart';
import 'package:to_do/data/cubit/post/post_cubit.dart';

import '../constants/routes.dart';
import '../presentation/screens/details_screen/post_details_screen.dart';
import '../presentation/screens/home_screen/home_screen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.tabs:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.details:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                          create: (context) => CommentListCubit()
                            ..getCommentListData((settings.arguments
                                as Map<String, dynamic>)["id"])),
                      BlocProvider(
                          create: (context) => PostCubit()
                            ..getPostData((settings.arguments
                                as Map<String, dynamic>)["id"])),
                    ],
                    child: PostDetailScreen(
                        (settings.arguments as Map<String, dynamic>)["id"])));
      default:
        throw Exception("Unimplemented routes");
    }
  }
}
