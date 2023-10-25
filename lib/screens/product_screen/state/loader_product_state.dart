/*
 * Webkul Software.
 * @package Mobikul Application Code.
 * @Category Mobikul
 * @author Webkul <support@webkul.com>
 * @Copyright (c) Webkul Software Private Limited (https://webkul.com)
 * @license https://store.webkul.com/license.html
 * @link https://store.webkul.com/license.html
 */

// ignore_for_file: file_names

import 'package:bagisto_app_demo/screens/product_screen/state/product_base_state.dart';



class OnClickProductLoaderState extends ProductBaseState {
  final bool? isReqToShowLoader;

  OnClickProductLoaderState({this.isReqToShowLoader});

  @override
  List<Object> get props => [isReqToShowLoader!];
}
