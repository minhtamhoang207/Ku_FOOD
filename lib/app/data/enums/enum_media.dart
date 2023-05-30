enum MediaType { img, vid }

extension EnumMedia on MediaType {
  String toJsonString() {
    switch (this) {
      case MediaType.img:
        return 'img';
      case MediaType.vid:
        return "vid";
    }
  }

  String getType() {
    switch (this) {
      case MediaType.img:
        return "img";
      case MediaType.vid:
        return "vid";
    }
  }

  String display() {
    switch (this) {
      case MediaType.img:
        return "img";
      case MediaType.vid:
        return "vid";
    }
  }
}

MediaType stringToMediaType(String type) {
  switch (type) {
    case 'img':
      return MediaType.img;
    case 'vid':
      return MediaType.vid;
    default:
      return MediaType.img;
  }
}

String mediaTypeToString(MediaType type) {
  switch (type) {
    case MediaType.img:
      return 'img';
    case MediaType.vid:
      return 'vid';
  }
}
