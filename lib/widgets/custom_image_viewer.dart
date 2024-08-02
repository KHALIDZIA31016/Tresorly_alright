import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageViewer extends StatefulWidget {
  final String? imagePath;
  final double? height;
  final double? width;
  final double? maxScale;
  final double? mimScale;
  final Color? color;
  final BoxFit? fit;
  final Alignment? alignment;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? radius;
  final BoxBorder? border;
  final String placeHolder;
  final bool enableZoom;
  final double? scale;

  const CustomImageViewer({
    super.key,
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.margin,
    this.radius,
    this.border,
    this.maxScale,
    this.mimScale,
    this.placeHolder = 'assets/images/svg/logo.svg',
    this.enableZoom = false,
    this.scale,
  });

  @override
  State<CustomImageViewer> createState() => _CustomImageViewerState();
}

class _CustomImageViewerState extends State<CustomImageViewer> {
  @override
  Widget build(BuildContext context) {
    Widget imageWidget;
    switch (widget.imagePath?.imageType) {
      case ImageType.svg:
        imageWidget = widget.enableZoom
            ? InteractiveViewer(
                maxScale: widget.maxScale ?? 2.0,
                minScale: widget.mimScale ?? 0.8,
                child: SvgPicture.asset(
                  widget.imagePath!,
                  height: widget.height,
                  width: widget.width,
                  color: widget.color,
                  fit: widget.fit ?? BoxFit.contain,
                ),
              )
            : SvgPicture.asset(
                widget.imagePath!,
                height: widget.height,
                width: widget.width,
                color: widget.color,
                fit: widget.fit ?? BoxFit.contain,
              );
        break;
      case ImageType.file:
        imageWidget = widget.enableZoom
            ? InteractiveViewer(
                maxScale: widget.maxScale ?? 2.0,
                minScale: widget.mimScale ?? 0.8,
                child: Image.file(
                  scale: widget.scale!,
                  File(widget.imagePath!),
                  height: widget.height,
                  width: widget.width,
                  fit: widget.fit ?? BoxFit.contain,
                  color: widget.color,
                  colorBlendMode:
                      widget.color != null ? BlendMode.modulate : null,
                  errorBuilder: (context, error, stackTrace) {
                    return _buildErrorWidget(context);
                  },
                ),
              )
            : Image.file(
                scale: widget.scale!,
                File(widget.imagePath!),
                height: widget.height,
                width: widget.width,
                fit: widget.fit ?? BoxFit.contain,
                color: widget.color,
                colorBlendMode:
                    widget.color != null ? BlendMode.modulate : null,
                errorBuilder: (context, error, stackTrace) {
                  return _buildErrorWidget(context);
                },
              );
        break;
      case ImageType.network:
        imageWidget = widget.enableZoom
            ? InteractiveViewer(
                maxScale: widget.maxScale ?? 2.0,
                minScale: widget.mimScale ?? 0.8,
                child: CachedNetworkImage(
                  imageUrl: widget.imagePath!,
                  height: widget.height,
                  width: widget.width,
                  fit: widget.fit ?? BoxFit.contain,
                  color: widget.color,
                  colorBlendMode: widget.color != null
                      ? BlendMode.modulate
                      : null, // Replacement
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) {
                    return _buildErrorWidget(context);
                  },
                ),
              )
            : CachedNetworkImage(
                imageUrl: widget.imagePath!,
                height: widget.height,
                width: widget.width,
                fit: widget.fit ?? BoxFit.contain,
                color: widget.color,
                colorBlendMode: widget.color != null
                    ? BlendMode.modulate
                    : null, // Replacement
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) {
                  return _buildErrorWidget(context);
                },
              );
        break;
      case ImageType.jpg:
        imageWidget = widget.enableZoom
            ? InteractiveViewer(
                maxScale: widget.maxScale ?? 2.0,
                minScale: widget.mimScale ?? 0.8,
                child: Image.asset(
                  scale: widget.scale!,
                  widget.imagePath!,
                  height: widget.height,
                  width: widget.width,
                  fit: widget.fit ?? BoxFit.contain,
                  color: widget.color,
                  colorBlendMode:
                      widget.color != null ? BlendMode.modulate : null,
                  errorBuilder: (context, error, stackTrace) {
                    return _buildErrorWidget(context);
                  },
                ),
              )
            : Image.asset(
                scale: widget.scale!,
                widget.imagePath!,
                height: widget.height,
                width: widget.width,
                fit: widget.fit ?? BoxFit.contain,
                color: widget.color,
                colorBlendMode:
                    widget.color != null ? BlendMode.modulate : null,
                errorBuilder: (context, error, stackTrace) {
                  return _buildErrorWidget(context);
                },
              );
        break;
      case ImageType.jpeg:
        imageWidget = widget.enableZoom
            ? InteractiveViewer(
                maxScale: widget.maxScale ?? 2.0,
                minScale: widget.mimScale ?? 0.8,
                child: Image.asset(
                  scale: widget.scale!,
                  widget.imagePath!,
                  height: widget.height,
                  width: widget.width,
                  fit: widget.fit ?? BoxFit.contain,
                  color: widget.color,
                  colorBlendMode:
                      widget.color != null ? BlendMode.modulate : null,
                  errorBuilder: (context, error, stackTrace) {
                    return _buildErrorWidget(context);
                  },
                ),
              )
            : Image.asset(
                scale: widget.scale!,
                widget.imagePath!,
                height: widget.height,
                width: widget.width,
                fit: widget.fit ?? BoxFit.contain,
                color: widget.color,
                colorBlendMode:
                    widget.color != null ? BlendMode.modulate : null,
                errorBuilder: (context, error, stackTrace) {
                  return _buildErrorWidget(context);
                },
              );
        break;
      case ImageType.png:
      default:
        imageWidget = widget.enableZoom
            ? InteractiveViewer(
                maxScale: widget.maxScale ?? 2.0,
                minScale: widget.mimScale ?? 0.8,
                child: Image.asset(
                  scale: widget.scale!,
                  widget.imagePath!,
                  height: widget.height,
                  width: widget.width,
                  fit: widget.fit ?? BoxFit.contain,
                  color: widget.color,
                  colorBlendMode:
                      widget.color != null ? BlendMode.modulate : null,
                  errorBuilder: (context, error, stackTrace) {
                    return _buildErrorWidget(context);
                  },
                ),
              )
            : Image.asset(
                scale: widget.scale!,
                widget.imagePath!,
                height: widget.height,
                width: widget.width,
                fit: widget.fit ?? BoxFit.contain,
                color: widget.color,
                colorBlendMode:
                    widget.color != null ? BlendMode.modulate : null,
                errorBuilder: (context, error, stackTrace) {
                  return _buildErrorWidget(context);
                },
              );
    }

    Widget paddedImage = Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: imageWidget,
    );

    return widget.alignment != null
        ? Align(
            alignment: widget.alignment!,
            child: _buildCircleImage(context, paddedImage),
          )
        : _buildCircleImage(context, paddedImage);
  }

  Widget _buildCircleImage(BuildContext context, Widget imageWidget) {
    return widget.radius != null
        ? ClipRRect(
            borderRadius: widget.radius!,
            child: _buildImageWithBorder(context, imageWidget),
          )
        : _buildImageWithBorder(context, imageWidget);
  }

  Widget _buildImageWithBorder(BuildContext context, Widget imageWidget) {
    if (widget.imagePath == null || widget.imagePath!.isEmpty) {
      return _buildErrorWidget(context);
    } else {
      return widget.border != null
          ? Container(
              decoration: BoxDecoration(
                border: widget.border,
                borderRadius: widget.radius,
              ),
              child: imageWidget,
            )
          : imageWidget;
    }
  }

  Widget _buildErrorWidget(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Center(
        child: Text(
          'Image not found',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

extension ImageTypeExtension on String? {
  ImageType get imageType {
    if (this == null) return ImageType.unknown;
    if (this!.startsWith('http') || this!.startsWith('https')) {
      return ImageType.network;
    } else if (this!.endsWith('.svg')) {
      return ImageType.svg;
    } else if (this!.startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, jpg, jpeg, network, file, unknown }
