import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/cubits/similer/similer_cubit.dart';
import 'package:bookly/features/home/custom_book.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/styles.dart';
import 'package:bookly/features/widget/action_button.dart';
import 'package:bookly/features/widget/book_details_view_body.dart';
import 'package:bookly/features/widget/book_rating.dart';
import 'package:bookly/features/widget/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (_) => SimilerCubit(
    getIt<HomeRepoImpl>(),
  )..fetchSimilerBook(
      category: bookModel.volumeInfo.categories!.first,
    ),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      BookDetailsViewBody(bookModel: bookModel),

                      /// Book Image
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * .3),
                        child: CustomBook(
                          imageUrl:
                              bookModel.volumeInfo.imageLinks.thumbnail 
                        ),
                      ),

                      /// Title
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            bookModel.volumeInfo.title ?? "Unknown",
                            textAlign: TextAlign.center,
                            style: Styles.titleOfBook,
                            
                          
                                                ),
                        ),

                      /// Author name
                      Text(
                        bookModel.volumeInfo.authors?.first ?? "Unknown",
                        textAlign: TextAlign.center,
                        style: Styles.titleMedium.copyWith(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                      ),

                      const SizedBox(height: 18),

                      /// Rating
                      BookRating(
                        rating: bookModel.volumeInfo.hashCode,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),

                      const SizedBox(height: 37),

                      const ActionButton(),

                      const SizedBox(height: 50),

                      /// Similar books title
                      Text(
                        'You can also like',
                        style: Styles.titleSize16.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),

              /// Similar Books List
              const SliverToBoxAdapter(
                child: SimilarBooksListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}