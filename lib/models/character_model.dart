class CharacterModel {

  late int charId;
  late String name;
  late String nickName;
  late String image;
  late List<dynamic> jobs;
  late String statusIfDeadOrAlive;
  late List<dynamic> appearanceOfSeasons;
  late String acotrName;
  late String categoryForTwoSeries;
  late List<dynamic> betterCallSaulAppearance;
  //
  // CharacterModel({
  //   this.name,
  //   this.image,
  //   this.actorName,
  //   this.birthday,
  //   this.appearanceOfSeasons,
  //   this.betterCallSaulAppearance,
  //   this.categoryForTwoSeries,
  //   this.charId,
  //   this.jobs,
  //   this.nickName,
  //   this.statusIfDeadOrAlive,
  // });
  CharacterModel.fromJson(Map<dynamic, dynamic> json) {
      charId = json["char_id"];
    name = json["name"];
    nickName = json["nickname"];
    image = json["img"];
    jobs = json["occupation"];
    statusIfDeadOrAlive = json["status"];
    appearanceOfSeasons = json["appearance"];
    acotrName = json["portrayed"];
    categoryForTwoSeries = json["category"];
    betterCallSaulAppearance = json["better_call_saul_appearance"];
  }
}