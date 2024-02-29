import 'package:flutter/material.dart';
import 'package:pixlit_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:pixlit_store/common/widgets/products/cart/cart_item.dart';
import 'package:pixlit_store/common/widgets/texts/product_price_text.dart';
import 'package:pixlit_store/ultils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key, this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          const TCartItem(),
          if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

          /// Add Remove Button Row with Total Price
          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra space
                  SizedBox(width: 70),

                  /// Add Remove Buttons
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              TProductPriceText(price: '256'),
            ],
          ),
        ],
      ),
    );
  }
}
