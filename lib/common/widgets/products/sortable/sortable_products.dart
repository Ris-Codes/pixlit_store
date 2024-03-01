import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pixlit_store/common/widgets/layouts/grid_layout.dart';
import 'package:pixlit_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:pixlit_store/ultils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration:
              const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
    
        /// Products
        TGridLayout(itemCount: 8, itemBuilder: (_, index) => const TProductCardVertical()),
      ],
    );
  }
}
