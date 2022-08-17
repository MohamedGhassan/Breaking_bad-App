import 'package:bearking_bad/models/character_model.dart';
import 'package:bearking_bad/network/remote/dio_helper.dart';
import '../../models/quote_model.dart';

class Repository{
  final DioHelper dioHelper;
  Repository(this.dioHelper);

  Future<List<CharacterModel>> getAllCharacters() async {
    final characters = await dioHelper.getAllCharacters();
    return characters.map((char) => CharacterModel.fromJson(char)).toList();
  }
  Future<List<Quote>> getCharacterQuotes(String charName) async {
    final quotes = await dioHelper.getCharacterQuotes(charName);
    return quotes.map((charQuotes) => Quote.fromJson(charQuotes)).toList();
  }



}