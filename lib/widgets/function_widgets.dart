import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

cacheImage(String image, {double? height, double? width}) {
  return CachedNetworkImage(
    imageUrl: image ?? "",
    fit: BoxFit.cover,
    height: height,
    width: width,
    progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(),
    errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),
  );
}
