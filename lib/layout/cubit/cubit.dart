import 'package:bearking_bad/layout/cubit/state.dart';
import 'package:bearking_bad/models/character_model.dart';
import 'package:bearking_bad/models/quote_model.dart';
import 'package:bearking_bad/network/remote/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>{
  static AppCubit get(context) =>BlocProvider.of(context);
  Repository? repository;
  AppCubit(this.repository) : super(AppInitialStates());

  List<CharacterModel> charcter = [];
  List<CharacterModel> getAllCharacters() {
    repository!.getAllCharacters().then((characters) {
      emit(GetCharactersSuccessState(characters));
      charcter = characters;
    });

    return charcter;
  }

  void getQuotes(String charName){
    repository!.getCharacterQuotes(charName).then((value){
      emit(GetQuotesSuccessState(value));
    });
  }

  CharacterModel? findByCharId(int charId){
    return charcter.firstWhere((element) => element.charId == charId);
  }

}