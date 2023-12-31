import 'package:social_network/utils/constants/app_constants.dart';
import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  const BaseState();
}

class BaseLoadMoreStateInitial extends BaseState {
  @override
  List<Object> get props => [];
}

class Loading extends BaseState {
  @override
  List<Object> get props => [];
}

class CompletedLoadMore extends BaseState {
  final CompleteType completeType;
  final List<dynamic>? posts;
  final String? errorMess;

  const CompletedLoadMore(this.completeType, {this.posts, this.errorMess});

  @override
  List<Object> get props => [completeType, posts ?? '', errorMess ?? ''];
}
