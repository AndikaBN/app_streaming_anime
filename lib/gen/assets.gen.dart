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

  /// File path: assets/icons/categories.svg
  String get categories => 'assets/icons/categories.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/more.svg
  String get more => 'assets/icons/more.svg';

  /// List of all assets
  List<String> get values => [categories, home, more];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ant-man.png
  AssetGenImage get antMan => const AssetGenImage('assets/images/ant-man.png');

  /// File path: assets/images/avenger.png
  AssetGenImage get avenger => const AssetGenImage('assets/images/avenger.png');

  /// File path: assets/images/far-from-home.png
  AssetGenImage get farFromHome =>
      const AssetGenImage('assets/images/far-from-home.png');

  /// File path: assets/images/no-way-home.png
  AssetGenImage get noWayHome =>
      const AssetGenImage('assets/images/no-way-home.png');

  /// File path: assets/images/sangchi.png
  AssetGenImage get sangchi => const AssetGenImage('assets/images/sangchi.png');

  /// File path: assets/images/thor.png
  AssetGenImage get thor => const AssetGenImage('assets/images/thor.png');

  /// File path: assets/images/wakanda-poreper.png
  AssetGenImage get wakandaPoreper =>
      const AssetGenImage('assets/images/wakanda-poreper.png');

  /// File path: assets/images/wpp-blurr.jpg
  AssetGenImage get wppBlurr =>
      const AssetGenImage('assets/images/wpp-blurr.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        antMan,
        avenger,
        farFromHome,
        noWayHome,
        sangchi,
        thor,
        wakandaPoreper,
        wppBlurr
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
