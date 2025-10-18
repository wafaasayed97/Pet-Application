import 'package:equatable/equatable.dart';

abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object?> get props => [];
}

class MainInitial extends MainState {}

class MainLoading extends MainState {}

class MainLoaded extends MainState {
  final int index;
  final bool isGuest;

  const MainLoaded({required this.index, required this.isGuest});

  @override
  List<Object?> get props => [index, isGuest];

  MainLoaded copyWith({int? index, bool? isGuest}) {
    return MainLoaded(
      index: index ?? this.index,
      isGuest: isGuest ?? this.isGuest,
    );
  }
}

class MainError extends MainState {
  final String message;

  const MainError(this.message);

  @override
  List<Object?> get props => [message];
}

class MainHasSurveySuccess extends MainState {
  final int surveyId;
  const MainHasSurveySuccess(this.surveyId);
}
