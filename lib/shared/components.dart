import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/character_model.dart';

buildCharacterItem(CharacterModel character, context) => Container(
  width: double.infinity,
  margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
  padding: EdgeInsetsDirectional.all(4),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25),
  ),
  child: InkWell(
    onTap: () {
      // navigateTo(
      //     context, CharacterDetailsScreen(characterId: character.charId));
    },
    child: Stack(
      children: [
        Hero(
          tag: character.charId,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: character.image!.isNotEmpty
                ? Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: FadeInImage.assetNetwork(
                width: double.infinity,
                height: double.infinity,
                placeholder: 'assets/images/loading.gif',
                image: character.image,
                fit: BoxFit.cover,
              ),
            )
                : Image.asset('assets/images/placeholder.jpg'),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          alignment: Alignment.bottomCenter,
          child: Text(
            '${character.name}',
            style: TextStyle(
              height: 1.3,
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  ),
);

Widget buildNoInternetWidget() {
  return Center(
    child: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Can\'t connect .. check internet',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          Image.asset('assets/images/no_internet.png')
        ],
      ),
    ),
  );
}

Widget showLoadingIndicator() {
  return Center(
    child: CircularProgressIndicator(
      color: Colors.yellow,
    ),
  );
}