import 'package:social_network/domain/model/post_model.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeStateInitial extends HomeState {
  @override
  List<Object> get props => [];
}
