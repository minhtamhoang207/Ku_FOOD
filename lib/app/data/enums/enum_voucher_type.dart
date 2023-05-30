enum VoucherType { percent, price, other }

extension EnumVoucher on VoucherType {
  String toJsonString() {
    switch (this) {
      case VoucherType.percent:
        return 'percent';
      case VoucherType.price:
        return 'price';
      case VoucherType.other:
        return 'no_infor';
    }
  }

  String display() {
    switch (this) {
      case VoucherType.price:
        return '₫';
      case VoucherType.percent:
        return '%';
      default:
        return '%';
    }
  }
}

VoucherType stringToVoucherType(String type) {
  switch (type) {
    case 'percent':
      return VoucherType.percent;
    case 'price':
      return VoucherType.price;
    default:
      return VoucherType.other;
  }
}

String voucherTypeToString(VoucherType type) {
  switch (type) {
    case VoucherType.percent:
      return 'percent';
    case VoucherType.price:
      return 'price';
    case VoucherType.other:
      return 'no_infor';
  }
}
