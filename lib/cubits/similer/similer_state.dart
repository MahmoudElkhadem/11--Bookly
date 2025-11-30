part of 'similer_cubit.dart';

abstract class SimilerState extends Equatable {
  const SimilerState();
  
  @override
  List<Object> get props => [];

}

class SimilerInitial extends SimilerState {}
class SimilerLoading extends SimilerState {}
class SimilerSuccess extends SimilerState {
  final List<BookModel> books;

  const SimilerSuccess(this.books);
}
class SimilerFailure extends SimilerState {
  final String errMessage;
  const SimilerFailure(this.errMessage);
}
