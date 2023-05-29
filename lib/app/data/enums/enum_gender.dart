enum GenderType { male, female, other }

extension EnumGender on GenderType {
  String toJsonString() {
    switch (this) {
      case GenderType.male:
        return 'male';
      case GenderType.female:
        return "female";
      case GenderType.other:
        return "no_info";
    }
  }

  String getType() {
    switch (this) {
      case GenderType.male:
        return "male";
      case GenderType.female:
        return "female";
      case GenderType.other:
        return "no_info";
    }
  }

  String display() {
    switch (this) {
      case GenderType.male:
        return "male";
      case GenderType.female:
        return "female";
      case GenderType.other:
        return "no_info";
    }
  }
}

GenderType stringToGenderType(String type) {
  switch (type) {
    case 'male':
      return GenderType.male;
    case 'female':
      return GenderType.female;
    case 'no_info':
      return GenderType.other;
    default:
      return GenderType.other;
  }
}

String genderTypeToString(GenderType type) {
  switch (type) {
    case GenderType.male:
      return 'male';
    case GenderType.female:
      return 'female';
    case GenderType.other:
      return 'no_info';
  }
}
