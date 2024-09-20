part of 'upload_photo_bloc.dart';

@immutable
sealed class UploadPhotoEvent {}

class StartUploadPhotoEvent extends UploadPhotoEvent {
  StartUploadPhotoEvent();
}

class UploadPhotoActionEvent extends UploadPhotoEvent {
  final String filename;
  final String attachment;
  final int product;

  UploadPhotoActionEvent(
    this.filename,
    this.attachment,
    this.product,
  );
}
