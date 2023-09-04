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
  num catchRate;
  num hatchMins;
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
    stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
    traits = json['traits'].cast<String>();
    details =
        json['details'] != null ? Details.fromJson(json['details']) : null;
    if (json['techniques'] != null) {
      techniques = <Techniques>[];
      json['techniques'].forEach((v) {
        techniques!.add(Techniques.fromJson(v));
      });
    }
    trivia = json['trivia'].cast<String>();
    evolution = json['evolution'] != null
        ? Evolution.fromJson(json['evolution'])
        : null;
    wikiPortraitUrlLarge = json['wikiPortraitUrlLarge'];
    lumaWikiPortraitUrlLarge = json['lumaWikiPortraitUrlLarge'];
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) {
        locations!.add(Locations.fromJson(v));
      });
    }
    icon = json['icon'];
    lumaIcon = json['lumaIcon'];
    genderRatio = json['genderRatio'] != null
        ? GenderRatio.fromJson(json['genderRatio'])
        : null;
    catchRate = json['catchRate'];
    hatchMins = json['hatchMins'];
    tvYields = json['tvYields'] != null
        ? TvYields.fromJson(json['tvYields'])
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = number;
    data['name'] = name;
    data['types'] = types;
    data['portraitWikiUrl'] = portraitWikiUrl;
    data['lumaPortraitWikiUrl'] = lumaPortraitWikiUrl;
    data['wikiUrl'] = wikiUrl;
    if (stats != null) {
      data['stats'] = stats!.toJson();
    }
    data['traits'] = traits;
    if (details != null) {
      data['details'] = details!.toJson();
    }
    if (techniques != null) {
      data['techniques'] = techniques!.map((v) => v.toJson()).toList();
    }
    data['trivia'] = trivia;
    if (evolution != null) {
      data['evolution'] = evolution!.toJson();
    }
    data['wikiPortraitUrlLarge'] = wikiPortraitUrlLarge;
    data['lumaWikiPortraitUrlLarge'] = lumaWikiPortraitUrlLarge;
    if (locations != null) {
      data['locations'] = locations!.map((v) => v.toJson()).toList();
    }
    data['icon'] = icon;
    data['lumaIcon'] = lumaIcon;
    if (genderRatio != null) {
      data['genderRatio'] = genderRatio!.toJson();
    }
    data['catchRate'] = catchRate;
    data['hatchMins'] = hatchMins;
    if (tvYields != null) {
      data['tvYields'] = tvYields!.toJson();
    }
    data['gameDescription'] = gameDescription;
    data['wikiRenderStaticUrl'] = wikiRenderStaticUrl;
    data['wikiRenderAnimatedUrl'] = wikiRenderAnimatedUrl;
    data['wikiRenderStaticLumaUrl'] = wikiRenderStaticLumaUrl;
    data['wikiRenderAnimatedLumaUrl'] = wikiRenderAnimatedLumaUrl;
    data['renderStaticImage'] = renderStaticImage;
    data['renderStaticLumaImage'] = renderStaticLumaImage;
    data['renderAnimatedImage'] = renderAnimatedImage;
    data['renderAnimatedLumaImage'] = renderAnimatedLumaImage;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hp'] = hp;
    data['sta'] = sta;
    data['spd'] = spd;
    data['atk'] = atk;
    data['def'] = def;
    data['spatk'] = spatk;
    data['spdef'] = spdef;
    data['total'] = total;
    return data;
  }
}

class Details {
  Height? height;
  Weight? weight;

  Details({this.height, this.weight});

  Details.fromJson(Map<String, dynamic> json) {
    height =
        json['height'] != null ? Height.fromJson(json['height']) : null;
    weight =
        json['weight'] != null ? Weight.fromJson(json['weight']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (height != null) {
      data['height'] = height!.toJson();
    }
    if (weight != null) {
      data['weight'] = weight!.toJson();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cm'] = cm;
    data['inches'] = inches;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kg'] = kg;
    data['lbs'] = lbs;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['source'] = source;
    data['levels'] = levels;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['evolves'] = evolves;
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
        json['freetem'] != null ? Freetem.fromJson(json['freetem']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['location'] = location;
    data['place'] = place;
    data['note'] = note;
    data['island'] = island;
    data['frequency'] = frequency;
    data['level'] = level;
    if (freetem != null) {
      data['freetem'] = freetem!.toJson();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['minLevel'] = minLevel;
    data['maxLevel'] = maxLevel;
    data['minPansuns'] = minPansuns;
    data['maxPansuns'] = maxPansuns;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['male'] = male;
    data['female'] = female;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hp'] = hp;
    data['sta'] = sta;
    data['spd'] = spd;
    data['atk'] = atk;
    data['def'] = def;
    data['spatk'] = spatk;
    data['spdef'] = spdef;
    return data;
  }
}
