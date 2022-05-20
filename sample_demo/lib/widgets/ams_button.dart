import 'package:flutter/material.dart';

//ignore: must_be_immutable
class AMSButton extends StatefulWidget {
  late Color? buttonBackgroundColor;
  Color? buttonTextColor;
  Color? borderColor;
  IconData? buttonIcon;
  Color? buttonIconColor;
  double? buttonHeight;
  String? text;
  ButtonWidth? buttonSize;
  bool? enableButton;
  bool? disableButton;
  late final VoidCallback? onPressed;

  AMSButton(
      {Key? key,
      this.buttonBackgroundColor,
      this.buttonTextColor,
      this.buttonIcon,
      this.buttonIconColor,
      this.buttonHeight,
      this.text,
      this.enableButton,
      this.disableButton,
      this.borderColor,
      this.buttonSize,
      this.onPressed})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AMSButtonState();
  }

}
class _AMSButtonState extends State<AMSButton> {

  void changeState() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getButtonWidth(widget.buttonSize!),
      height: widget.buttonHeight,
      decoration: BoxDecoration(
        color: widget.buttonBackgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextButton(
        onPressed:() {
          changeState();
          widget.onPressed!();
        },
        child: Text(
          widget.text!,
          style: TextStyle(color: widget.buttonTextColor),
        ),
      ),
    );
  }
}

double getButtonWidth(ButtonWidth buttonWidth) {
  switch (buttonWidth) {
    case ButtonWidth.small:
      return 180;
    case ButtonWidth.big:
      return 360;
    default:
      return 0;
  }
}

enum ButtonWidth { small, big }

