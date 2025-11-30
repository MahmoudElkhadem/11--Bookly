import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similer_state.dart';

class SimilerCubit extends Cubit<SimilerState> {
  SimilerCubit(this.homeRepo) : super(SimilerInitial());

  static SimilerCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchSimilerBook({required String category}) async {
    emit(SimilerLoading());
     var result = await homeRepo.fetchSimilerBooks() ;

    result.fold((failure) {
      emit(SimilerFailure(failure.errmessage));
    },
    (books) {
      emit(SimilerSuccess(books));
    }
    );
  }
  
}
