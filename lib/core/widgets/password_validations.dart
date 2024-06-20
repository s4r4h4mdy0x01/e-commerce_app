import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        hasValidated
            ? Icon(
                Icons.check,
                color: ColorManager.green,
              )
            : Icon(
                Icons.close,
                color: ColorManager.rad,
              ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkOrangeRegular.copyWith(
            color: hasValidated ? ColorManager.darkPrimary : ColorManager.error,
          ),
        )
      ],
    );
  }
}
