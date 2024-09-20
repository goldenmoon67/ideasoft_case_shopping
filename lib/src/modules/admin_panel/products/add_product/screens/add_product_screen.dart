import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/currency/currency.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/products/add_product/bloc/add_product_bloc.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/app_router.dart';

@RoutePage()
class AddProductScreen extends StatefulWidget implements AutoRouteWrapper {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AddProductBloc(),
      child: this,
    );
  }
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _skuController = TextEditingController();
  final TextEditingController _stockAmountController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  String _selectedCurrency = 'TL';

  @override
  void dispose() {
    _nameController.dispose();
    _skuController.dispose();
    _stockAmountController.dispose();
    _priceController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductBloc, AddProductState>(
      listener: (context, state) {
        if (state is AddProductLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss(animation: false);
        }

        if (state is AddProductSuccesData) {
          AutoRouter.of(context).setRoot(const AdminPanelHomeRoute());
          AutoRouter.of(context).push(UploadPhotoRoute(productId: state.id));

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Ürün oluşturuldu'),
              backgroundColor: Colors.black,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Ürün Adı',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen bir ürün adı girin';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _skuController,
                      decoration: const InputDecoration(
                        labelText: 'SKU',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen bir SKU girin';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _stockAmountController,
                      decoration: const InputDecoration(
                        labelText: 'Stok Adedi',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen stok adedi girin';
                        }
                        if (int.tryParse(value) == null) {
                          return 'Lütfen geçerli bir sayı girin';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _priceController,
                      decoration: const InputDecoration(
                        labelText: 'Fiyat',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen bir fiyat girin';
                        }
                        if (double.tryParse(value) == null) {
                          return 'Lütfen geçerli bir sayı girin';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedCurrency,
                      decoration: const InputDecoration(
                        labelText: 'Para Birimi',
                        border: OutlineInputBorder(),
                      ),
                      items: [
                        'TL',
                        'USD',
                      ].map((String currency) {
                        return DropdownMenuItem<String>(
                          value: currency,
                          child: Text(currency),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedCurrency = newValue!;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen bir para birimi seçin';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      child: const Text('Ürün Oluştur'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          BlocProvider.of<AddProductBloc>(context).add(
                            AddProductActionEvent(
                              name: _nameController.text,
                              price: double.parse(_priceController.text),
                              selectedCurrency: Currency(
                                id: _selectedCurrency == "TL" ? 1 : 2,
                                label: _selectedCurrency,
                                abbr: _selectedCurrency,
                              ),
                              sku: _skuController.text,
                              stockAmount:
                                  int.parse(_stockAmountController.text),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
