part of 'widget.dart';


class inputField extends StatelessWidget {
  const inputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: primary
              )
          ),
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.only(left: 10)
      ),
    );
  }
}