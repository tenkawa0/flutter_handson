import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/events.dart';

class SearchForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  var _keyword;

  @override
  Widget build(BuildContext context) {
    final events = Provider.of<Events>(context);

    void _submitForm() {
      //バリデーション
      if (!_form.currentState!.validate()) {
        return;
      }
      _form.currentState!.save(); //TextFieldのonSaveをコールする
      events.fetch(_keyword);
    }

    return Form(
      key: _form,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'キーワード',
          prefixIcon: Icon(Icons.search),
        ),
        onSaved: (value) => _keyword = value,
        validator: (value) {
          if (value!.isEmpty) {
            return 'キーワードを入力してください';
          } else {
            return null;
          }
        },
        onFieldSubmitted: (_) => _submitForm(),
      ),
    );
  }
}
