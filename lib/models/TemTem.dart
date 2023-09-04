class TemTem {
  int? number;
  bool isExpanded = false;
  String? name;
  List<String>? types;
  String? portraitWikiUrl;
  String? lumaPortraitWikiUrl;
  String? wikiUrl;
  Stats? stats;
  List<String>? traits;
  Details? details;
  List<Techniques>? techniques;
  List<String>? trivia;
  Evolution? evolution;
  String? wikiPortraitUrlLarge;
  String? lumaWikiPortraitUrlLarge;
  List<Locations>? locations;
  String? icon;
  String? lumaIcon;
  GenderRatio? genderRatio;
  var catchRate;
  var hatchMins;
  TvYields? tvYields;
  String? gameDescription;
  String? wikiRenderStaticUrl;
  String? wikiRenderAnimatedUrl;
  String? wikiRenderStaticLumaUrl;
  String? wikiRenderAnimatedLumaUrl;
  String? renderStaticImage;
  String? renderStaticLumaImage;
  String? renderAnimatedImage;
  String? renderAnimatedLumaImage;

  TemTem(temtem,
      {this.number,
      this.name,
      this.types,
      this.portraitWikiUrl,
      this.lumaPortraitWikiUrl,
      this.wikiUrl,
      this.stats,
      this.traits,
      this.details,
      this.techniques,
      this.trivia,
      this.evolution,
      this.wikiPortraitUrlLarge,
      this.lumaWikiPortraitUrlLarge,
      this.locations,
      this.icon,
      this.lumaIcon,
      this.genderRatio,
      this.catchRate,
      this.hatchMins,
      this.tvYields,
      this.gameDescription,
      this.wikiRenderStaticUrl,
      this.wikiRenderAnimatedUrl,
      this.wikiRenderStaticLumaUrl,
      this.wikiRenderAnimatedLumaUrl,
      this.renderStaticImage,
      this.renderStaticLumaImage,
      this.renderAnimatedImage,
      this.renderAnimatedLumaImage});

  TemTem.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    types = json['types'].cast<String>();
    portraitWikiUrl = json['portraitWikiUrl'];
    lumaPortraitWikiUrl = json['lumaPortraitWikiUrl'];
    wikiUrl = json['wikiUrl'];
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    traits = json['traits'].cast<String>();
    details =
        json['details'] != null ? new Details.fromJson(json['details']) : null;
    if (json['techniques'] != null) {
      techniques = <Techniques>[];
      json['techniques'].forEach((v) {
        techniques!.add(new Techniques.fromJson(v));
      });
    }
    trivia = json['trivia'].cast<String>();
    evolution = json['evolution'] != null
        ? new Evolution.fromJson(json['evolution'])
        : null;
    wikiPortraitUrlLarge = json['wikiPortraitUrlLarge'];
    lumaWikiPortraitUrlLarge = json['lumaWikiPortraitUrlLarge'];
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) {
        locations!.add(new Locations.fromJson(v));
      });
    }
    icon = json['icon'];
    lumaIcon = json['lumaIcon'];
    genderRatio = json['genderRatio'] != null
        ? new GenderRatio.fromJson(json['genderRatio'])
        : null;
    catchRate = json['catchRate'];
    hatchMins = json['hatchMins'];
    tvYields = json['tvYields'] != null
        ? new TvYields.fromJson(json['tvYields'])
        : null;
    gameDescription = json['gameDescription'];
    wikiRenderStaticUrl = json['wikiRenderStaticUrl'];
    wikiRenderAnimatedUrl = json['wikiRenderAnimatedUrl'];
    wikiRenderStaticLumaUrl = json['wikiRenderStaticLumaUrl'];
    wikiRenderAnimatedLumaUrl = json['wikiRenderAnimatedLumaUrl'];
    renderStaticImage = json['renderStaticImage'];
    renderStaticLumaImage = json['renderStaticLumaImage'];
    renderAnimatedImage = json['renderAnimatedImage'];
    renderAnimatedLumaImage = json['renderAnimatedLumaImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['name'] = this.name;
    data['types'] = this.types;
    data['portraitWikiUrl'] = this.portraitWikiUrl;
    data['lumaPortraitWikiUrl'] = this.lumaPortraitWikiUrl;
    data['wikiUrl'] = this.wikiUrl;
    if (this.stats != null) {
      data['stats'] = this.stats!.toJson();
    }
    data['traits'] = this.traits;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    if (this.techniques != null) {
      data['techniques'] = this.techniques!.map((v) => v.toJson()).toList();
    }
    data['trivia'] = this.trivia;
    if (this.evolution != null) {
      data['evolution'] = this.evolution!.toJson();
    }
    data['wikiPortraitUrlLarge'] = this.wikiPortraitUrlLarge;
    data['lumaWikiPortraitUrlLarge'] = this.lumaWikiPortraitUrlLarge;
    if (this.locations != null) {
      data['locations'] = this.locations!.map((v) => v.toJson()).toList();
    }
    data['icon'] = this.icon;
    data['lumaIcon'] = this.lumaIcon;
    if (this.genderRatio != null) {
      data['genderRatio'] = this.genderRatio!.toJson();
    }
    data['catchRate'] = this.catchRate;
    data['hatchMins'] = this.hatchMins;
    if (this.tvYields != null) {
      data['tvYields'] = this.tvYields!.toJson();
    }
    data['gameDescription'] = this.gameDescription;
    data['wikiRenderStaticUrl'] = this.wikiRenderStaticUrl;
    data['wikiRenderAnimatedUrl'] = this.wikiRenderAnimatedUrl;
    data['wikiRenderStaticLumaUrl'] = this.wikiRenderStaticLumaUrl;
    data['wikiRenderAnimatedLumaUrl'] = this.wikiRenderAnimatedLumaUrl;
    data['renderStaticImage'] = this.renderStaticImage;
    data['renderStaticLumaImage'] = this.renderStaticLumaImage;
    data['renderAnimatedImage'] = this.renderAnimatedImage;
    data['renderAnimatedLumaImage'] = this.renderAnimatedLumaImage;
    return data;
  }
}

class Stats {
  int? hp;
  int? sta;
  int? spd;
  int? atk;
  int? def;
  int? spatk;
  int? spdef;
  int? total;

  Stats(
      {this.hp,
      this.sta,
      this.spd,
      this.atk,
      this.def,
      this.spatk,
      this.spdef,
      this.total});

  Stats.fromJson(Map<String, dynamic> json) {
    hp = json['hp'];
    sta = json['sta'];
    spd = json['spd'];
    atk = json['atk'];
    def = json['def'];
    spatk = json['spatk'];
    spdef = json['spdef'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hp'] = this.hp;
    data['sta'] = this.sta;
    data['spd'] = this.spd;
    data['atk'] = this.atk;
    data['def'] = this.def;
    data['spatk'] = this.spatk;
    data['spdef'] = this.spdef;
    data['total'] = this.total;
    return data;
  }
}

class Details {
  Height? height;
  Weight? weight;

  Details({this.height, this.weight});

  Details.fromJson(Map<String, dynamic> json) {
    height =
        json['height'] != null ? new Height.fromJson(json['height']) : null;
    weight =
        json['weight'] != null ? new Weight.fromJson(json['weight']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.height != null) {
      data['height'] = this.height!.toJson();
    }
    if (this.weight != null) {
      data['weight'] = this.weight!.toJson();
    }
    return data;
  }
}

class Height {
  int? cm;
  int? inches;

  Height({this.cm, this.inches});

  Height.fromJson(Map<String, dynamic> json) {
    cm = json['cm'];
    inches = json['inches'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cm'] = this.cm;
    data['inches'] = this.inches;
    return data;
  }
}

class Weight {
  int? kg;
  int? lbs;

  Weight({this.kg, this.lbs});

  Weight.fromJson(Map<String, dynamic> json) {
    kg = json['kg'];
    lbs = json['lbs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kg'] = this.kg;
    data['lbs'] = this.lbs;
    return data;
  }
}

class Techniques {
  String? name;
  String? source;
  int? levels;

  Techniques({this.name, this.source, this.levels});

  Techniques.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    source = json['source'];
    levels = json['levels'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['source'] = this.source;
    data['levels'] = this.levels;
    return data;
  }
}

class Evolution {
  bool? evolves;

  Evolution({this.evolves});

  Evolution.fromJson(Map<String, dynamic> json) {
    evolves = json['evolves'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['evolves'] = this.evolves;
    return data;
  }
}

class Locations {
  String? location;
  String? place;
  String? note;
  String? island;
  String? frequency;
  String? level;
  Freetem? freetem;

  Locations(
      {this.location,
      this.place,
      this.note,
      this.island,
      this.frequency,
      this.level,
      this.freetem});

  Locations.fromJson(Map<String, dynamic> json) {
    location = json['location'];
    place = json['place'];
    note = json['note'];
    island = json['island'];
    frequency = json['frequency'];
    level = json['level'];
    freetem =
        json['freetem'] != null ? new Freetem.fromJson(json['freetem']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['location'] = this.location;
    data['place'] = this.place;
    data['note'] = this.note;
    data['island'] = this.island;
    data['frequency'] = this.frequency;
    data['level'] = this.level;
    if (this.freetem != null) {
      data['freetem'] = this.freetem!.toJson();
    }
    return data;
  }
}

class Freetem {
  int? minLevel;
  int? maxLevel;
  int? minPansuns;
  int? maxPansuns;

  Freetem({this.minLevel, this.maxLevel, this.minPansuns, this.maxPansuns});

  Freetem.fromJson(Map<String, dynamic> json) {
    minLevel = json['minLevel'];
    maxLevel = json['maxLevel'];
    minPansuns = json['minPansuns'];
    maxPansuns = json['maxPansuns'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['minLevel'] = this.minLevel;
    data['maxLevel'] = this.maxLevel;
    data['minPansuns'] = this.minPansuns;
    data['maxPansuns'] = this.maxPansuns;
    return data;
  }
}

class GenderRatio {
  int? male;
  int? female;

  GenderRatio({this.male, this.female});

  GenderRatio.fromJson(Map<String, dynamic> json) {
    male = json['male'];
    female = json['female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['male'] = this.male;
    data['female'] = this.female;
    return data;
  }
}

class TvYields {
  int? hp;
  int? sta;
  int? spd;
  int? atk;
  int? def;
  int? spatk;
  int? spdef;

  TvYields(
      {this.hp,
      this.sta,
      this.spd,
      this.atk,
      this.def,
      this.spatk,
      this.spdef});

  TvYields.fromJson(Map<String, dynamic> json) {
    hp = json['hp'];
    sta = json['sta'];
    spd = json['spd'];
    atk = json['atk'];
    def = json['def'];
    spatk = json['spatk'];
    spdef = json['spdef'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hp'] = this.hp;
    data['sta'] = this.sta;
    data['spd'] = this.spd;
    data['atk'] = this.atk;
    data['def'] = this.def;
    data['spatk'] = this.spatk;
    data['spdef'] = this.spdef;
    return data;
  }
}
