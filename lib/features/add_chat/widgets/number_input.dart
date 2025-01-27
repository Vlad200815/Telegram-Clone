import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberInput extends StatelessWidget {
  const NumberInput({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: IntlPhoneField(
        decoration: InputDecoration(
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
          ),
        ),
        initialCountryCode: 'UA',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }
}
