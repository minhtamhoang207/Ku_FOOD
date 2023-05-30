enum RoleType { customer, vendor, transporter, admin, staff, supporter }

extension EnumRole on RoleType {
  String toJsonString() {
    switch (this) {
      case RoleType.customer:
        return 'customer';
      case RoleType.vendor:
        return "vendor";
      case RoleType.transporter:
        return "transporter";
      case RoleType.admin:
        return "admin";
      case RoleType.staff:
        return "staff";
      case RoleType.supporter:
        return "supporter";
    }
  }

  String getType() {
    switch (this) {
      case RoleType.customer:
        return "customer";
      case RoleType.vendor:
        return "vendor";
      case RoleType.transporter:
        return "transporter";
      case RoleType.admin:
        return "admin";
      case RoleType.staff:
        return "staff";
      case RoleType.supporter:
        return "supporter";
    }
  }

  String display() {
    switch (this) {
      case RoleType.customer:
        return "customer";
      case RoleType.vendor:
        return "vendor";
      case RoleType.transporter:
        return "transporter";
      case RoleType.admin:
        return "admin";
      case RoleType.staff:
        return "staff";
      case RoleType.supporter:
        return "supporter";
    }
  }
}

RoleType stringToRoleType(String type) {
  switch (type) {
    case 'customer':
      return RoleType.customer;
    case 'vendor':
      return RoleType.vendor;
    case 'transporter':
      return RoleType.transporter;
    case 'admin':
      return RoleType.admin;
    case 'staff':
      return RoleType.staff;
    case 'supporter':
      return RoleType.supporter;
    default:
      return RoleType.customer;
  }
}

String roleTypeToString(RoleType type) {
  switch (type) {
    case RoleType.customer:
      return 'customer';
    case RoleType.vendor:
      return 'vendor';
    case RoleType.transporter:
      return 'transporter';
    case RoleType.staff:
      return 'staff';
    case RoleType.supporter:
      return 'supporter';
    case RoleType.admin:
      return 'admin';
  }
}
