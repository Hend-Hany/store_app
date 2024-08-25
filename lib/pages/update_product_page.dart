import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_text_feild.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String id = 'UpdateProduct';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update product'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomTextFormField(
            hintText: 'Product name',
          ),
        ],
      ),
    );
  }
}
