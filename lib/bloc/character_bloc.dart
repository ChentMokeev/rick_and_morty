import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rick_and_morty/data/character_repo.dart';
import 'package:rick_and_morty/model/char_model.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc({
    required this.repo,
  }) : super(CharacterInitialState()) {
    on<CharacterEvent>((event, emit) async {
      emit(CharacterLoadingState());
      try {
        final result = await repo.getCharacters();
        emit(CharacterSuccsesState(model: result));
      } catch (e) {
        emit(CharacterErrorState());
      }
    });
  }

  final CharacterRepo repo;
}

@immutable
abstract class CharacterState {}

class CharacterInitialState extends CharacterState {}

class CharacterLoadingState extends CharacterState {}

class CharacterSuccsesState extends CharacterState {
  final CharModel model;

  CharacterSuccsesState({required this.model});
}

class CharacterErrorState extends CharacterState {}

@immutable
abstract class CharacterEvent {}

class GetCharacterEvent extends CharacterEvent {}