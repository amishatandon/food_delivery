import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String _firstHalf;
  late String _secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 4.63;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      //height of the text is less then text in the widget
      _firstHalf = widget.text.substring(0, textHeight.toInt());
      _secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      _firstHalf = widget.text;
      _secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _secondHalf.isEmpty
          ? SmallText(
              color: AppColors.paraColor,
              size: Dimensions.font16,
              text: _firstHalf)
          : Column(
              children: [
                SmallText(
                    height: 1.8,
                    color: AppColors.paraColor,
                    size: Dimensions.font16,
                    text: hiddenText
                        ? (_firstHalf + "...")
                        : (_firstHalf + _secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
