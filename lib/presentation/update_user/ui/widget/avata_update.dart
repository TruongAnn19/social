import 'dart:typed_data';

import 'package:social_network/presentation/update_user/bloc/update_user_cubit.dart';
import 'package:social_network/utils/constants/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AvataUpdateWidget extends StatefulWidget {
  final UpdateUserCubit cubit;

  const AvataUpdateWidget({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  State<AvataUpdateWidget> createState() => _AvataUpdateWidgetState();
}

class _AvataUpdateWidgetState extends State<AvataUpdateWidget> {
  Uint8List? _image;

  Future<void> selectImage() async {
    final Uint8List? im = await widget.cubit.pickImage(ImageSource.gallery);

    setState(() {
      _image = im;
      widget.cubit.image = im;
    });
    widget.cubit.isUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_image == null)
          CircleAvatar(
            radius: 64, // Image radius
            backgroundImage: NetworkImage(
              widget.cubit.userInfo.avatarUrl ?? ImageAssets.imgEmptyAvata,
            ),
          )
        else
          CircleAvatar(
            radius: 64, // Image radius
            backgroundImage: MemoryImage(_image ?? Uint8List(0)),
          ),
        Positioned(
          bottom: -5,
          left: 90,
          child: GestureDetector(
            onTap: selectImage,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.add_a_photo,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
