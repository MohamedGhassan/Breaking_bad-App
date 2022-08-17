import 'package:bearking_bad/models/character_model.dart';
import 'package:bearking_bad/models/quote_model.dart';

abstract class AppStates {}

class AppInitialStates extends AppStates {}

class GetCharactersLoadingState extends AppStates {}

class GetCharactersSuccessState extends AppStates {
  final List<CharacterModel>? characters;
  GetCharactersSuccessState(this.characters);
}

class GetCharactersErrorState extends AppStates {
  final String error;
  GetCharactersErrorState(this.error);
}

class GetQuotesLoadingState extends AppStates {}

class GetQuotesSuccessState extends AppStates {
  final List<Quote> quote;
  GetQuotesSuccessState(this.quote);
}

class GetQuotesErrorState extends AppStates {
  final String error;
  GetQuotesErrorState(this.error);
}
