import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_state.dart';

class NewsetCubit extends Cubit<NewsetState> {
  NewsetCubit(this.homeRepo) : super(NewsetInitial());

  static NewsetCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchNewsBook() async {
    emit(NewsetLoading());
     var result = await homeRepo.fetchNewsetBooks();

    result.fold((failure) {
      emit(NewsetFailure(failure.errmessage));
    },
    (books) {
      emit(NewsetSuccess(books));
    }
    );
  }
}
