import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/helper/phone_number.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/register_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/phone_code_picker.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/phone_number_text_form_field.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({
    super.key,
  });

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String selectedCode = '+20';
  TextEditingController controller = TextEditingController();
  String? validationMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: PhoneNumberTextFormField(
                controller: controller,
                onChanged: (value) {
                  setState(() {
                    validationMessage = PhoneNumberHelper.validatePhoneNumber(
                      phoneNumber: controller.text,
                      selectedCode: selectedCode,
                    );
                  });
                },
              ),
            ),
            const SizedBox(width: 8),
            PhoneCodePicker(
              initialSelection: selectedCode,
              onChanged: (value) {
                setState(() {
                  selectedCode = value.dialCode!;
                });
              },
            ),
          ],
        ),
        if (validationMessage != null)
          Column(
            children: [
              const SizedBox(height: 8),
              DangerContainer(
                text: validationMessage!,
              ),
            ],
          ),
      ],
    );
  }
}
