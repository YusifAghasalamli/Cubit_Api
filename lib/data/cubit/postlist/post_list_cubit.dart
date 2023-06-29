import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/data/cubit/postlist/post_list_state.dart';
import 'package:to_do/data/repository/post_list_repository.dart';

// class PostListBloc extends Bloc<PostListEvent, PostListState> {
//   PostListBloc() : super(PostListInit()) {
//     on<PostListFetchEvent>((event, emit) => _mapFetchListEventToState());
//   }
//   PostListRepository repo = PostListRepository();

//   Stream<void> _mapFetchListEventToState() async* {
//     yield PostListLoading();
//     print("loading");
//     try {
//       var data = await repo.getPostList();
//       yield PostListFetched(data);
//     } catch (e) {
//       print(e);
//       yield PostListError(error: e.toString());
//     }
//   }
// }

// class PostListBloc extends Bloc<PostListEvent, PostListState> {
//   PostListBloc() : super(PostListInit()) {
//     on<PostListFetchEvent>((event, emit) => mapFetchListEventToState(emit));
//   }
//   PostListRepository repo = PostListRepository();

//   Stream<void> mapFetchListEventToState(emit) async* {
//     emit(PostListLoading());

//     print("loading");
//     try {
//       var data = await repo.getPostList();
//       emit(PostListFetched(data));
//     } catch (e) {
//       print(e);
//       emit(PostListError(error: e.toString()));
//     }
//   }
// }

class PostListCubit extends Cubit<PostListState> {
  PostListCubit() : super(PostListInit());
  PostListRepository repo = PostListRepository();

  void getPostListData() async {
    emit(PostListLoading());
    // print("loading");
    try {
      var data = await repo.getPostList();
      emit(PostListFetched(data));
    } catch (e) {
      // print(e);
      emit(PostListError(error: e.toString()));
    }
  }
}

// class PostListBloc extends Bloc<PostListEvent, PostListState> {
//   final PostListRepository _apiRepository = PostListRepository();

//   PostListBloc() : super(PostListInit());

//   Stream<PostListState> mapEventToState(PostListInit event) async* {
//     if (event is PostListFetchEvent) {
//       yield PostListLoading();
//       try {
//         final data = await _apiRepository.getPostList();
//         yield PostListFetched(data);
//       } catch (error) {
//         yield PostListError(error: error.toString());
//       }
//     }
//   }
// }

// class PostListBloc extends Bloc<PostListEvent, PostListState> {
//   final PostListRepository _apiRepository = PostListRepository();

//   PostListBloc() : super(PostListInit()) {
//     on<PostListEvent>((event, emit) => mapEventToState(event, emit));
//   }

//   Stream<PostListState> mapEventToState(
//       PostListEvent event, Emitter<PostListState> emit) async* {
//     print("salam qaqa");
//     if (event is PostListFetchEvent) {
//       yield PostListLoading();
//       try {
//         final data = await _apiRepository.getPostList();
//         yield PostListFetched(data);
//       } catch (error) {
//         yield PostListError(error: error.toString());
//       }
//     }
//   }
// }
