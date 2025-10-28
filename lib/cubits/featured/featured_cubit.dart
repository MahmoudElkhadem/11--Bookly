import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_state.dart';

class FeaturedCubit extends Cubit<FeaturedState> {
  FeaturedCubit() : super(FeaturedInitial());

  static FeaturedCubit get(context) => BlocProvider.of(context);

  // Add your methods here
}
