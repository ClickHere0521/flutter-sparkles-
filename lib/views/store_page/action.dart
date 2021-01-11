import 'package:dosparkles/models/models.dart';
import 'package:fish_redux/fish_redux.dart';

enum StorePageAction {
  action,
  productIndexSelected,
  addToCart,
  backToAllProducts,
}

class StorePageActionCreator {
  static Action onAction() {
    return const Action(StorePageAction.action);
  }

  static Action onProductIndexSelected(int productIndex) {
    return Action(StorePageAction.productIndexSelected, payload: productIndex);
  }

  static Action onAddToCart(ProductItem product) {
    return Action(StorePageAction.addToCart, payload: product);
  }

  static Action onBackToAllProducts() {
    return const Action(StorePageAction.backToAllProducts);
  }
}
