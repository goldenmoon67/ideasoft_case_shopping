import 'dart:convert';
import 'dart:io';
import 'dart:io' as io;

import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/products/upload_photo/bloc/upload_photo_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/products/upload_photo/widgets/upload_image_component.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/app_router.dart';

@RoutePage()
class UploadPhotoScreen extends StatefulWidget implements AutoRouteWrapper {
  final int productId;
  const UploadPhotoScreen({super.key, required this.productId});

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => UploadPhotoBloc(),
      child: this,
    );
  }
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  File? _imageFile;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadPhotoBloc, UploadPhotoState>(
      listener: (context, state) {
        if (state is UploadPhotoLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss(animation: false);
        }

        if (state is UploadPhotoSuccesData) {
          AutoRouter.of(context).setRoot(const AdminPanelHomeRoute());
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Resim Başarıyla eklendi'),
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  UploadImageComponent(
                    onImageChanced: (imageFile) {
                      setState(() {
                        _imageFile = imageFile;
                      });
                    },
                    onPressedDeletePhoto: () {
                      setState(() {
                        _imageFile!.delete();
                        _imageFile = null;
                      });
                      Navigator.of(context, rootNavigator: true).pop(context);
                    },
                    appDialogForDeleteItem: false,
                    deleteOption: false,
                    imageFile: _imageFile,
                    imageUrl: null,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        final bytes =
                            io.File(_imageFile!.path).readAsBytesSync();

                        String img64 = base64Encode(bytes);
                        BlocProvider.of<UploadPhotoBloc>(context).add(
                          UploadPhotoActionEvent(
                            "image${widget.productId}",
                            "data:image/jpeg;base64,$img64",
                            widget.productId,
                          ),
                        );
                      },
                      child: const Text('Fotoğrafı Ekle'),
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
}
