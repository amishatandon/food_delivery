import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/widgets/app_icon.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecomendedFoodDetail extends StatelessWidget {
  const RecomendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20),
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                  ),
                  child: Center(
                      child: BigText(
                          size: Dimensions.font26, text: "Chinese Side")),
                )),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const ExpandableText(
                      text:
                          "Chinese side dishes, often referred to as xiǎo cài, play a significant role in Chinese cuisine, enhancing the main course with their variety and flavors. These small, complementary dishes can range from pickled vegetables, such as Sichuan pickles, to marinated tofu, like century eggs with tofu. Common side dishes also include stir-fried greens, such as garlic sautéed bok choy or Chinese broccoli, providing a fresh, crunchy contrast to richer main dishes. Cold appetizers, like jellyfish salad or cucumber with garlic sauce, offer refreshing and light options. These side dishes are not only delicious but also bring a balance of textures and flavors, making the overall dining experience more harmonious and satisfying.Chinese side dishes, often referred to as xiǎo cài, play a significant role in Chinese cuisine, enhancing the main course with their variety and flavors. These small, complementary dishes can range from pickled vegetables, such as Sichuan pickles, to marinated tofu, like century eggs with tofu. Common side dishes also include stir-fried greens, such as garlic sautéed bok choy or Chinese broccoli, providing a fresh, crunchy contrast to richer main dishes. Cold appetizers, like jellyfish salad or cucumber with garlic sauce, offer refreshing and light options. These side dishes are not only delicious but also bring a balance of textures and flavors, making the overall dining experience more harmonious and satisfying.Chinese side dishes, often referred to as xiǎo cài, play a significant role in Chinese cuisine, enhancing the main course with their variety and flavors. These small, complementary dishes can range from pickled vegetables, such as Sichuan pickles, to marinated tofu, like century eggs with tofu. Common side dishes also include stir-fried greens, such as garlic sautéed bok choy or Chinese broccoli, providing a fresh, crunchy contrast to richer main dishes. Cold appetizers, like jellyfish salad or cucumber with garlic sauce, offer refreshing and light options. These side dishes are not only delicious but also bring a balance of textures and flavors, making the overall dining experience more harmonious and satisfying.Chinese side dishes, often referred to as xiǎo cài, play a significant role in Chinese cuisine, enhancing the main course with their variety and flavors. These small, complementary dishes can range from pickled vegetables, such as Sichuan pickles, to marinated tofu, like century eggs with tofu. Common side dishes also include stir-fried greens, such as garlic sautéed bok choy or Chinese broccoli, providing a fresh, crunchy contrast to richer main dishes. Cold appetizers, like jellyfish salad or cucumber with garlic sauce, offer refreshing and light options. These side dishes are not only delicious but also bring a balance of textures and flavors, making the overall dining experience more harmonious and satisfying."),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: " \$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30, bottom: Dimensions.height30),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
