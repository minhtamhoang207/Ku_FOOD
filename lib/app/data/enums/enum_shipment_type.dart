enum ShipmentType { express, fast }

extension EnumShipment on ShipmentType {
  String toJsonString() {
    switch (this) {
      case ShipmentType.express:
        return 'express';
      case ShipmentType.fast:
        return "fast";
    }
  }

  String getType() {
    switch (this) {
      case ShipmentType.express:
        return "express";
      case ShipmentType.fast:
        return "fast";
    }
  }

  String display() {
    switch (this) {
      case ShipmentType.express:
        return "express";
      case ShipmentType.fast:
        return "fast";
    }
  }
}

ShipmentType stringToShipmentType(String type) {
  switch (type) {
    case 'express':
      return ShipmentType.express;
    default:
      return ShipmentType.fast;
  }
}

String shipmentTypeToString(ShipmentType type) {
  switch (type) {
    case ShipmentType.express:
      return 'express';
    case ShipmentType.fast:
      return 'fast';
  }
}
