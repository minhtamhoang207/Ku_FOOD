enum StockStatusType { available, order, notAvailable }

extension EnumStockStatus on StockStatusType {
  String toJsonString() {
    switch (this) {
      case StockStatusType.available:
        return 'available';
      case StockStatusType.order:
        return "order";
      case StockStatusType.notAvailable:
        return "n/a";
    }
  }

  String getType() {
    switch (this) {
      case StockStatusType.available:
        return "available";
      case StockStatusType.order:
        return "order";
      case StockStatusType.notAvailable:
        return "n/a";
    }
  }

  String display() {
    switch (this) {
      case StockStatusType.available:
        return "available";
      case StockStatusType.order:
        return "order";
      case StockStatusType.notAvailable:
        return "n/a";
    }
  }
}

StockStatusType stringToStockStatusType(String type) {
  switch (type) {
    case 'available':
      return StockStatusType.available;
    case 'order':
      return StockStatusType.order;
    case "n/a":
      return StockStatusType.notAvailable;
    default:
      return StockStatusType.available;
  }
}

String stockStatusTypeToString(StockStatusType type) {
  switch (type) {
    case StockStatusType.available:
      return 'ProductType';
    case StockStatusType.order:
      return 'order';
    case StockStatusType.notAvailable:
      return "n/a";
  }
}
