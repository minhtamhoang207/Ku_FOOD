/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_all.svg
  String get icAll => 'assets/icons/ic_all.svg';

  /// File path: assets/icons/ic_burger.svg
  String get icBurger => 'assets/icons/ic_burger.svg';

  /// File path: assets/icons/ic_calendar.svg
  String get icCalendar => 'assets/icons/ic_calendar.svg';

  /// File path: assets/icons/ic_carrot.svg
  String get icCarrot => 'assets/icons/ic_carrot.svg';

  /// File path: assets/icons/ic_change_password.svg
  String get icChangePassword => 'assets/icons/ic_change_password.svg';

  /// File path: assets/icons/ic_discount.svg
  String get icDiscount => 'assets/icons/ic_discount.svg';

  /// File path: assets/icons/ic_discount_deactive.svg
  String get icDiscountDeactive => 'assets/icons/ic_discount_deactive.svg';

  /// File path: assets/icons/ic_drink.svg
  String get icDrink => 'assets/icons/ic_drink.svg';

  /// File path: assets/icons/ic_heart.svg
  String get icHeart => 'assets/icons/ic_heart.svg';

  /// File path: assets/icons/ic_heart_deactive.svg
  String get icHeartDeactive => 'assets/icons/ic_heart_deactive.svg';

  /// File path: assets/icons/ic_home.svg
  String get icHome => 'assets/icons/ic_home.svg';

  /// File path: assets/icons/ic_home_deactive.svg
  String get icHomeDeactive => 'assets/icons/ic_home_deactive.svg';

  /// File path: assets/icons/ic_list.svg
  String get icList => 'assets/icons/ic_list.svg';

  /// File path: assets/icons/ic_location.svg
  String get icLocation => 'assets/icons/ic_location.svg';

  /// File path: assets/icons/ic_order.svg
  String get icOrder => 'assets/icons/ic_order.svg';

  /// File path: assets/icons/ic_pizza.svg
  String get icPizza => 'assets/icons/ic_pizza.svg';

  /// File path: assets/icons/ic_profile.svg
  String get icProfile => 'assets/icons/ic_profile.svg';

  /// File path: assets/icons/ic_profile_deactive.svg
  String get icProfileDeactive => 'assets/icons/ic_profile_deactive.svg';

  /// File path: assets/icons/ic_search.svg
  String get icSearch => 'assets/icons/ic_search.svg';

  /// File path: assets/icons/ic_shipping.svg
  String get icShipping => 'assets/icons/ic_shipping.svg';

  /// File path: assets/icons/icon.jpeg
  AssetGenImage get icon => const AssetGenImage('assets/icons/icon.jpeg');

  /// List of all assets
  List<dynamic> get values => [
        icAll,
        icBurger,
        icCalendar,
        icCarrot,
        icChangePassword,
        icDiscount,
        icDiscountDeactive,
        icDrink,
        icHeart,
        icHeartDeactive,
        icHome,
        icHomeDeactive,
        icList,
        icLocation,
        icOrder,
        icPizza,
        icProfile,
        icProfileDeactive,
        icSearch,
        icShipping,
        icon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_home.png
  AssetGenImage get imgHome =>
      const AssetGenImage('assets/images/img_home.png');

  /// File path: assets/images/img_splash.png
  AssetGenImage get imgSplash =>
      const AssetGenImage('assets/images/img_splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [imgHome, imgSplash];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const String productMasterData = 'assets/product_master_data.json';

  /// List of all assets
  List<String> get values => [productMasterData];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
