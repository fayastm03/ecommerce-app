import 'dart:developer';

import 'package:admin_panel/models/api_response.dart';
import 'package:admin_panel/utility/snack_bar_helper.dart';
import 'package:get/get.dart';

import '../../../models/order.dart';
import '../../../services/http_services.dart';
import 'package:flutter/cupertino.dart';
import '../../../core/data/data_provider.dart';

class OrderProvider extends ChangeNotifier {
  HttpService service = HttpService();
  final DataProvider _dataProvider;
  final orderFormKey = GlobalKey<FormState>();
  TextEditingController trackingUrlCtrl = TextEditingController();
  String selectedOrderStatus = 'pending';
  Order? orderForUpdate;

  OrderProvider(this._dataProvider);

  updateOrder() async {
    try {
      if (orderForUpdate != null) {
        Map<String, dynamic> order = {
          'trackingUrl': trackingUrlCtrl.text,
          'orderStatus': selectedOrderStatus
        };
        final response = await service.updateItem(
            endpointUrl: 'orders',
            itemId: orderForUpdate?.sId ?? '',
            itemData: order);
        if (response.isOk) {
          ApiResponse apiResponse = ApiResponse.fromJson(response.body, null);
          if (apiResponse.success == true) {
            SnackBarHelper.showSuccessSnackBar('${apiResponse.message}');
            log('Order updated successfully');
            _dataProvider.getAllOrders();
          } else {
            SnackBarHelper.showErrorSnackBar(
                'Failed to update order: ${apiResponse.message}');
            log('Failed to update order: ${apiResponse.message}');
          }
        } else {
          SnackBarHelper.showErrorSnackBar(
              'Error: ${response.body?['message'] ?? response.statusText}');
        }
      }
    } catch (e) {
      print(e);
      SnackBarHelper.showErrorSnackBar('An error occurred: $e');
      rethrow;
    }
  }

  deleteOrder(Order order) async {
    try {
      Response response = await service.deleteItem(
          endpointUrl: 'orders', itemId: order.sId ?? '');
      if (response.isOk) {
        ApiResponse apiResponse = ApiResponse.fromJson(response.body, null);
        if (apiResponse.success == true) {
          SnackBarHelper.showSuccessSnackBar('Order deleted successfully');
          log('Order deleted successfully');
          _dataProvider.getAllOrders();
        } else {
          SnackBarHelper.showErrorSnackBar(
              'Failed to delete order: ${apiResponse.message}');
        }
      }
    } catch (e) {
      print(e);
      SnackBarHelper.showErrorSnackBar('An error occurred: $e');
      rethrow;
    }
  }

  updateUI() {
    notifyListeners();
  }
}
