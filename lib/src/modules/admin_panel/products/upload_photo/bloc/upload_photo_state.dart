part of 'upload_photo_bloc.dart';

@immutable
sealed class UploadPhotoState {}

final class UploadPhotoInitial extends UploadPhotoState {}

final class UploadPhotoLoading extends UploadPhotoState {}

final class UploadPhotoSuccesData extends UploadPhotoState {
  UploadPhotoSuccesData();
}
