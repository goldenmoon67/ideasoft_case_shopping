import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/categories/add_category/bloc/add_category_bloc.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/app_router.dart';

@RoutePage()
class AddCategoryScreen extends StatefulWidget implements AutoRouteWrapper {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCategoryBloc(),
      child: this,
    );
  }
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _sortOrderController = TextEditingController();
  final TextEditingController _percentController = TextEditingController();
  final TextEditingController _imageFileController = TextEditingController();
  final TextEditingController _showcaseContentController =
      TextEditingController();
  final TextEditingController _metaDescriptionController =
      TextEditingController();
  final TextEditingController _metaKeywordsController = TextEditingController();
  final TextEditingController _canonicalUrlController = TextEditingController();

  int _status = 1;

  @override
  void dispose() {
    _nameController.dispose();
    _sortOrderController.dispose();
    _percentController.dispose();
    _imageFileController.dispose();
    _showcaseContentController.dispose();
    _metaDescriptionController.dispose();
    _metaKeywordsController.dispose();
    _canonicalUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCategoryBloc, AddCategoryState>(
      listener: (context, state) {
        if (state is AddCategoryLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss(animation: false);
        }

        if (state is AddCategorySuccesData) {
          AutoRouter.of(context).setRoot(const AdminPanelHomeRoute());
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Kategory oluşturuldu'),
              backgroundColor: Colors.black,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration:
                        const InputDecoration(labelText: 'Kategori Adı'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen bir kategori adı girin';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _sortOrderController,
                    decoration: const InputDecoration(labelText: 'Sıralama'),
                    keyboardType: TextInputType.number,
                  ),
                  DropdownButtonFormField<int>(
                    value: _status,
                    decoration: const InputDecoration(labelText: 'Durum'),
                    items: const [
                      DropdownMenuItem(value: 0, child: Text('Pasif')),
                      DropdownMenuItem(value: 1, child: Text('Aktif')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _status = value!;
                      });
                    },
                  ),
                  TextFormField(
                    controller: _percentController,
                    decoration: const InputDecoration(labelText: 'Yüzde'),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _submitForm();
                        }
                      },
                      child: const Text('Kategori Ekle'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _submitForm() {
    int sortOrder = int.tryParse(_sortOrderController.text) ?? 999;

    if (sortOrder < 0 || sortOrder > 999) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sıralama 0 ile 999 arasında olmalıdır'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    BlocProvider.of<AddCategoryBloc>(context).add(AddCategoryActionEvent(
      name: _nameController.text,
      sortOrder: int.tryParse(_sortOrderController.text) ?? 999,
      status: _status,
      percent: int.tryParse(_percentController.text) ?? 1,
    ));
  }
}
