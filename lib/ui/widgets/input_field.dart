part of 'widget.dart';

class InputField extends StatelessWidget {
  TextEditingController controller;
  bool obsecure;

  InputField({required this.controller, this.obsecure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecure,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: primary)),
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.only(left: 10)),
    );
  }
}
