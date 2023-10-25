/*
 * Webkul Software.
 * @package Mobikul Application Code.
 * @Category Mobikul
 * @author Webkul <support@webkul.com>
 * @Copyright (c) Webkul Software Private Limited (https://webkul.com)
 * @license https://store.webkul.com/license.html
 * @link https://store.webkul.com/license.html
 */

// ignore_for_file: file_names, must_be_immutable

import 'package:bagisto_app_demo/helper/application_localization.dart';
import 'package:bagisto_app_demo/screens/product_screen/view/file_download.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';

import '../../../models/product_model/product_screen_model.dart';

class DownloadProductSample extends StatefulWidget {
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  List<DownloadableProduct>? samples;

  DownloadProductSample({Key? key, this.samples, this.scaffoldMessengerKey})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DownloadProductSampleState();
  }
}

class _DownloadProductSampleState extends State<DownloadProductSample> {
  final buttonCarouselController = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (widget.samples?.length ?? 0) > 0
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                  "Samples".localized(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: (widget.samples?.length ?? 0),
                    itemBuilder: (context, i) {
                      return Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4),
                          child: InkWell(
                            onTap: () {
                              DownloadFile().downloadPersonalData(
                                  widget.samples?[i].url ?? "",
                                  widget.samples?[i].fileName ?? "",
                                  widget.samples?[i].type ?? "",
                                  context,
                                  widget.scaffoldMessengerKey);
                            },
                            child: Text(
                              widget.samples?[i].translations
                                      ?.map((e) => e.title)
                                      .toString() ??
                                  '',
                              style: const TextStyle(color: Colors.blue),
                            ),
                          ));
                    })
              ])
        : Container();
  }
}
