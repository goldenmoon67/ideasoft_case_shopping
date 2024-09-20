import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/image/create_image_model.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/product_create_id_model/product_create_id_model.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/product/product_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'upload_photo_event.dart';
part 'upload_photo_state.dart';

class UploadPhotoBloc extends Bloc<UploadPhotoEvent, UploadPhotoState> {
  final productRepository = getIt<ProductRepository>();

  UploadPhotoBloc() : super(UploadPhotoInitial()) {
    on<StartUploadPhotoEvent>((event, emit) async {
      emit(UploadPhotoLoading());
    });
    on<UploadPhotoActionEvent>(
      (event, emit) async {
        emit(UploadPhotoLoading());
        productRepository.uploadImage(
          CreateImageModel(
            filename: event.filename,
            extension: "jpg",
            attachment: event.attachment,
            sortOrder: 1,
            product: ProductCreateIdModel(id: event.product),
          ),
        );
        emit(UploadPhotoSuccesData());
      },
    );
  }
}
