/*
 * Webkul Software.
 * @package Mobikul Application Code.
 * @Category Mobikul
 * @author Webkul <support@webkul.com>
 * @Copyright (c) Webkul Software Private Limited (https://webkul.com)
 * @license https://store.webkul.com/license.html
 * @link https://store.webkul.com/license.html
 */

// ignore_for_file: file_names, avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageView extends StatelessWidget {
  final String? url;
  double height;
  double width;
  BoxFit? fit;

  ImageView(
      {Key? key,
        this.url,
        this.width = 0.0,
        this.height = 0.0,
        this.fit=BoxFit.fill })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width:  width != 0.0 ?  width : null,
      height: height != 0.0 ?  height : null,
      fit: fit ?? BoxFit.scaleDown,
      imageUrl: url??"",
      placeholder: (context, url) => Image.asset('assets/images/placeholder.png'),
      errorWidget: (context, url, error) => Image.asset('assets/images/placeholder.png'),
    );



  }

}

