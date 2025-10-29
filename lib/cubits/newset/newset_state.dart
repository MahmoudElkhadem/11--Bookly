part of 'newset_cubit.dart';

abstract class NewsetState extends Equatable {
  const NewsetState();
  @override
  
  List<Object> get props => [];
}


class NewsetInitial extends NewsetState {}
class NewsetLoading extends NewsetState {}
class NewsetSuccess extends NewsetState {
  final List<BookModel> books;

  const NewsetSuccess(this.books);

}
class NewsetFailure extends NewsetState {
  final String errMessage;

  const NewsetFailure(this.errMessage);

}

