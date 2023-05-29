enum CurrencySymbolsType { vnd, usd, cny, won, jpy }

extension EnumCurrencySymbols on CurrencySymbolsType {
  String toJsonString() {
    switch (this) {
      case CurrencySymbolsType.vnd:
        return '₫';
      case CurrencySymbolsType.usd:
        return "\$";
      case CurrencySymbolsType.cny:
        return "¥";
      case CurrencySymbolsType.won:
        return "₩";
      case CurrencySymbolsType.jpy:
        return "円";
    }
  }

  String getType() {
    switch (this) {
      case CurrencySymbolsType.vnd:
        return '₫';
      case CurrencySymbolsType.usd:
        return "\$";
      case CurrencySymbolsType.cny:
        return "¥";
      case CurrencySymbolsType.won:
        return "₩";
      case CurrencySymbolsType.jpy:
        return "円";
    }
  }

  String display() {
    switch (this) {
      case CurrencySymbolsType.vnd:
        return '₫';
      case CurrencySymbolsType.usd:
        return "\$";
      case CurrencySymbolsType.cny:
        return "¥";
      case CurrencySymbolsType.won:
        return "₩";
      case CurrencySymbolsType.jpy:
        return "円";
    }
  }
}

CurrencySymbolsType stringToCurrencySymbolsType(String type) {
  switch (type) {
    case '₫':
      return CurrencySymbolsType.vnd;
    case '\$':
      return CurrencySymbolsType.usd;
    case "¥":
      return CurrencySymbolsType.cny;
    case "₩":
      return CurrencySymbolsType.won;
    case "円":
      return CurrencySymbolsType.jpy;

    default:
      return CurrencySymbolsType.vnd;
  }
}

String currencySymbolsTypeToString(CurrencySymbolsType type) {
  switch (type) {
    case CurrencySymbolsType.vnd:
      return '₫';
    case CurrencySymbolsType.usd:
      return '\$';
    case CurrencySymbolsType.cny:
      return "¥";
    case CurrencySymbolsType.won:
      return "₩";
    case CurrencySymbolsType.jpy:
      return "円";
  }
}
