import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ideasoft_case_project_shop/src/utils/dialog/app_dialog.dart';
import 'package:ideasoft_case_project_shop/src/widgets/actionsheets/platform_action_sheet.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

enum AspectRatioType {
  oval,
  rectangle,
}

class AccesCamera {
  static BuildContext? _contextCamera;
  static editUserProfilePhoto(
    BuildContext context,
    File? file,
    String? imageUrl, {
    bool deleteOption = true,
    required void Function(File? imageFile) onImageChanced,
    required void Function() onPressedDeletePhoto,
    required AspectRatioType aspectRatioType,
    required bool appDialogForDeleteItem,
  }) {
    _contextCamera = context;
    var actions = <ActionSheetAction>[
      ActionSheetAction(
          text: "Kamera",
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
            _getImage(
              context,
              ImageSource.camera,
              file,
              onImageChanced,
              aspectRatioType,
            );
          }),
      ActionSheetAction(
          text: "Galeri",
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
            _getImage(
              context,
              ImageSource.gallery,
              file,
              onImageChanced,
              aspectRatioType,
            );
          })
    ];
    if (deleteOption == true &&
        (imageUrl != null || imageUrl == "" || file != null)) {
      actions.add(
        appDialogForDeleteItem == true
            ? ActionSheetAction(
                text: "Sil",
                onPressed: () async {
                  Navigator.of(context, rootNavigator: true).pop(context);
                  AppDialog.i(
                    context,
                    options: AppDialogOptions(
                      message: "Silmek istediğine emin misin?",
                      actions: [
                        AppDialogAction(
                          title: "İptal",
                          onPressed: () {},
                        ),
                        AppDialogAction(
                          title: "Evet",
                          onPressed: onPressedDeletePhoto,
                        ),
                      ],
                    ),
                  );
                })
            : ActionSheetAction(
                text: "Sil",
                onPressed: onPressedDeletePhoto,
              ),
      );
    }

    actions.add(ActionSheetAction(
      text: "Kapat",
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop(context);
      },
      isCancel: true,
      defaultAction: true,
    ));

    PlatformActionSheet().displaySheet(
        context: context, title: null, message: null, actions: actions);
  }

  static _getImage(
    BuildContext context,
    ImageSource source,
    File? imageFile,
    void Function(File? imageFile) onImageChanced,
    AspectRatioType aspectRatioType,
  ) async {
    final ImagePicker picker = ImagePicker();

    try {
      final pickedFile = await picker.pickImage(
        source: source,
      );

      if (pickedFile == null) {
        return;
      }

      await _cropImage(
        pickedFile.path,
        onImageChanced,
        aspectRatioType,
      );
    } catch (ex, stack) {
      if (ex is PlatformException) {
        if (ex.code == "photo_access_denied") {
          _photoDenied();
        } else if (ex.code == "camera_access_denied") {
          _cameraDenied();
        }
      }
      debugPrint(ex.toString());
      debugPrintStack(stackTrace: stack);
    }
  }

  static Future _cropImage(
    String path,
    void Function(File? imageFile) onImageChanced,
    AspectRatioType aspectRatioType,
  ) async {
    var maxSize = aspectRatioType == AspectRatioType.oval ? 500 : 1000;
    var croppedImageFile = await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatio: aspectRatioType == AspectRatioType.oval
          ? const CropAspectRatio(ratioX: 1, ratioY: 1)
          : const CropAspectRatio(ratioX: 16, ratioY: 9),
      compressQuality: 100,
      maxHeight: maxSize,
      maxWidth: maxSize,
      compressFormat: ImageCompressFormat.jpg,
    );

    if (croppedImageFile == null) {
      return;
    }
    var imageFile = File(croppedImageFile.path);
    onImageChanced(imageFile);
  }

  static void _photoDenied() {
    AppDialog.w(
      _contextCamera!,
      options: AppDialogOptions(
        message: "Galeri erişimine izin verilmedi",
        actions: [
          AppDialogAction(title: "İptal", onPressed: () {}),
          AppDialogAction(
            title: "Ayarları Aç",
            onPressed: () {
              openAppSettings();
            },
          ),
        ],
      ),
    );
  }

  static void _cameraDenied() {
    AppDialog.w(
      _contextCamera!,
      options: AppDialogOptions(
        message: "Kamera Erişimine izin verilmedi",
        actions: [
          AppDialogAction(title: "İptal", onPressed: () {}),
          AppDialogAction(
            title: "Ayarları Aç",
            onPressed: () {
              openAppSettings();
            },
          ),
        ],
      ),
    );
  }
}
