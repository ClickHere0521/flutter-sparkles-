import 'dart:ui';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:dosparkles/globalbasestate/state.dart';
import 'package:dosparkles/models/models.dart';

class StorePageState implements GlobalBaseState, Cloneable<StorePageState> {
  AnimationController animationController;
  bool listView;
  int productIndex;

  @override
  StorePageState clone() {
    return StorePageState()
      ..animationController = animationController
      ..listView = listView
      ..productIndex = productIndex
      // 
      ..locale = locale
      ..user = user
      ..storesList = storesList
      ..selectedStore = selectedStore
      ..selectedProduct = selectedProduct;
  }

  @override
  Locale locale;

  @override
  AppUser user;

  @override
  List<StoreItem> storesList;

  @override
  StoreItem selectedStore;

  @override
  ProductItem selectedProduct;
}

StorePageState initState(Map<String, dynamic> args) {
  return StorePageState();
}
