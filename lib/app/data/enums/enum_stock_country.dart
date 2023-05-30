enum StockCountryType { vn, us, eu, cn, jp, kr }

extension EnumStockCountry on StockCountryType {
  String toJsonString() {
    switch (this) {
      case StockCountryType.vn:
        return 'VN';
      case StockCountryType.us:
        return "US";
      case StockCountryType.eu:
        return "EU";
      case StockCountryType.cn:
        return "CN";
      case StockCountryType.jp:
        return "JP";
      case StockCountryType.kr:
        return "KR";
    }
  }

  String getType() {
    switch (this) {
      case StockCountryType.vn:
        return 'VN';
      case StockCountryType.us:
        return "US";
      case StockCountryType.eu:
        return "EU";
      case StockCountryType.cn:
        return "CN";
      case StockCountryType.jp:
        return "JP";
      case StockCountryType.kr:
        return "KR";
    }
  }

  String display() {
    switch (this) {
      case StockCountryType.vn:
        return 'VN';
      case StockCountryType.us:
        return "US";
      case StockCountryType.eu:
        return "EU";
      case StockCountryType.cn:
        return "CN";
      case StockCountryType.jp:
        return "JP";
      case StockCountryType.kr:
        return "KR";
    }
  }
}

StockCountryType stringToStockCountryType(String type) {
  switch (type) {
    case 'VN':
      return StockCountryType.vn;
    case 'US':
      return StockCountryType.us;
    case "EU":
      return StockCountryType.eu;
    case "CN":
      return StockCountryType.cn;
    case "JP":
      return StockCountryType.jp;
    case "KR":
      return StockCountryType.kr;
    default:
      return StockCountryType.vn;
  }
}

String stockCountryTypeToString(StockCountryType type) {
  switch (type) {
    case StockCountryType.vn:
      return 'VN';
    case StockCountryType.us:
      return 'US';
    case StockCountryType.eu:
      return "EU";
    case StockCountryType.cn:
      return "CN";
    case StockCountryType.jp:
      return "JP";
    case StockCountryType.kr:
      return "KR";
  }
}
