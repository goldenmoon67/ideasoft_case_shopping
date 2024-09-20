import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/utils/camera/acces_camera_util.dart';

class UploadImageComponent extends StatefulWidget {
  final File? imageFile;
  final String? imageUrl;
  final void Function(File?) onImageChanced;
  final void Function() onPressedDeletePhoto;
  final bool appDialogForDeleteItem;
  final bool deleteOption;

  const UploadImageComponent({
    super.key,
    this.imageFile,
    required this.onImageChanced,
    required this.onPressedDeletePhoto,
    this.imageUrl,
    required this.appDialogForDeleteItem,
    this.deleteOption = true,
  });

  @override
  State<UploadImageComponent> createState() => _UploadImageComponentState();
}

class _UploadImageComponentState extends State<UploadImageComponent> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.blueAccent,
          ),
        ),
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              if (widget.imageFile != null)
                Image.file(
                  widget.imageFile!,
                  fit: BoxFit.cover,
                ),
              if (widget.imageFile == null && widget.imageUrl != null)
                CachedNetworkImage(
                  imageUrl: widget.imageUrl!,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  errorWidget: (context, url, error) {
                    return Container(
                      color: Colors.grey,
                      child: const Center(
                        child: Icon(Icons.dangerous),
                      ),
                    );
                  },
                ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.image_outlined),
                  label: Text(
                    widget.imageFile != null || widget.imageUrl != null
                        ? "Fotoğrafı Değiştir"
                        : "Fotoğraf Yükle",
                  ),
                  onPressed: () {
                    AccesCamera.editUserProfilePhoto(
                      context,
                      widget.imageFile,
                      widget.imageUrl,
                      onImageChanced: (imageFile) {
                        widget.onImageChanced(imageFile);
                      },
                      onPressedDeletePhoto: widget.onPressedDeletePhoto,
                      aspectRatioType: AspectRatioType.rectangle,
                      appDialogForDeleteItem: widget.appDialogForDeleteItem,
                      deleteOption: widget.deleteOption,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
