enum DayOfWeek { Mon, Tue, Wed, Thu, Fri, Sat, Sun }

extension EnumDay on DayOfWeek {
  String toJsonString() {
    switch (this) {
      case DayOfWeek.Mon:
        return '2';
      case DayOfWeek.Tue:
        return "3";
      case DayOfWeek.Wed:
        return "4";
      case DayOfWeek.Thu:
        return "5";
      case DayOfWeek.Fri:
        return "6";
      case DayOfWeek.Sat:
        return "7";
      case DayOfWeek.Sun:
        return "Chủ nhật";
    }
  }

  String getType() {
    switch (this) {
      case DayOfWeek.Mon:
        return '2';
      case DayOfWeek.Tue:
        return "3";
      case DayOfWeek.Wed:
        return "4";
      case DayOfWeek.Thu:
        return "5";
      case DayOfWeek.Fri:
        return "6";
      case DayOfWeek.Sat:
        return "7";
      case DayOfWeek.Sun:
        return "Chủ nhật";
    }
  }

  String display() {
    switch (this) {
      case DayOfWeek.Mon:
        return '2';
      case DayOfWeek.Tue:
        return "3";
      case DayOfWeek.Wed:
        return "4";
      case DayOfWeek.Thu:
        return "5";
      case DayOfWeek.Fri:
        return "6";
      case DayOfWeek.Sat:
        return "7";
      case DayOfWeek.Sun:
        return "Chủ nhật";
    }
  }
}

DayOfWeek stringToDateOfWeek(String type) {
  switch (type) {
    case '2':
      return DayOfWeek.Mon;
    case '3':
      return DayOfWeek.Tue;
    case '4':
      return DayOfWeek.Wed;
    case '5':
      return DayOfWeek.Thu;
    case '6':
      return DayOfWeek.Fri;
    case '7':
      return DayOfWeek.Sat;
    default:
      return DayOfWeek.Sun;
  }
}

String dayOfWeekToString(DayOfWeek day) {
  switch (day) {
    case DayOfWeek.Mon:
      return '2';
    case DayOfWeek.Tue:
      return "3";
    case DayOfWeek.Wed:
      return "4";
    case DayOfWeek.Thu:
      return "5";
    case DayOfWeek.Fri:
      return "6";
    case DayOfWeek.Sat:
      return "7";
    case DayOfWeek.Sun:
      return "Chủ nhật";
  }
}
