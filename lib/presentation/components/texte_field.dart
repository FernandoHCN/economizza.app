import 'package:baseapp/presentation/helpers/colors.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {Key? key,
      required this.label,
      this.hintText,
      required this.onChanged,
      this.validator,
      this.inputDecoration,
      required this.icon,
      this.textInputType})
      : super(key: key);

  final String label;
  final String? hintText;
  final IconData? icon;
  final bool isPassword = false;
  final Function? onChanged;
  final Function? validator;
  final Either<bool, bool> directionIcon = Right(true);
  final InputDecoration? inputDecoration;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            label,
            style: Theme.of(context).textTheme.subtitle2,
          )),
      TextFormField(
        cursorColor: Colors.white,
        style: Theme.of(context).textTheme.bodyText1,
        keyboardType: textInputType ??
            (isPassword ? TextInputType.text : TextInputType.emailAddress),
        decoration: inputDecoration?.copyWith(
                icon: Icon(
              icon,
              color: Colors.white,
            )) ??
            InputDecoration(
                fillColor: kBackgroungColor,
                hintText: hintText,
                hintStyle: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: kFontLightColor),
                filled: true,
                icon: Icon(
                  icon,
                  color: kFontLightColor,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kFontLightColor),
                    borderRadius: BorderRadius.circular(28),
                    gapPadding: 10),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kFontLightColor),
                    borderRadius: BorderRadius.circular(28),
                    gapPadding: 10),
                contentPadding: EdgeInsets.all(8.0)),
        obscureText: isPassword,
      ),
    ]);
  }
}
