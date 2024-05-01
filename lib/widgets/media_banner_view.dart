import 'package:flutter/material.dart';
import 'package:flutter_demo/core/resource/app_colors.dart';
import 'package:flutter_demo/core/resource/size_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'function_widgets.dart';

class MediaBannerView extends StatefulWidget {
  final List<String>? banners;

  const MediaBannerView(this.banners, {Key? key}) : super(key: key);

  @override
  State<MediaBannerView> createState() => _MediaBannerViewState();
}

class _MediaBannerViewState extends State<MediaBannerView> {
  final _pageController = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return widget.banners?.isNotEmpty == true
        ? SizedBox(
            height: 180.h,
            child: Card(
              margin: EdgeInsets.only(
                top: spacingMediumH,
                left: spacingTinyW,
                right: spacingTinyW,
              ),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  PageView(
                    physics: const BouncingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      if (mounted) {
                        setState(() {
                          _currentPage = page;
                        });
                      }
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(widget.banners?.length ?? 0,
                          (index) => cacheImage(widget.banners![index]))
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: spacingTinyW),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              widget.banners?.length ?? 0,
                              (index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  alignment: Alignment.centerLeft,
                                  height: 4,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(3),
                                    color: _currentPage == index
                                        ? AppColors.of.primary
                                        : Colors.white54,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : const SizedBox();
  }
}
