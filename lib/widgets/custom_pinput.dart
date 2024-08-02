import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tresorly/utils/app_colors.dart';

class CustomPinPut extends StatelessWidget {
  final ValueChanged<String>? onCompleted;
  final FormFieldValidator<String>? validator;

  const CustomPinPut({
    super.key,
    this.onCompleted,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: GoogleFonts.poppins(
        fontSize: 20,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(234, 239, 243, 1),
            width: 2.0,
          ),
        ),
      ),
    );

    return Pinput(
      defaultPinTheme: pinTheme,
      focusedPinTheme: pinTheme.copyWith(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromRGBO(30, 60, 87, 1),
              width: 2.0,
            ),
          ),
        ),
      ),
      submittedPinTheme: pinTheme,
      validator: validator,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: onCompleted,
    );
  }
}
