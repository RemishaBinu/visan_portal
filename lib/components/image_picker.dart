import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  @override
  State<ImagePickerWidget> createState() {
    return ImagePickerState();
  }
}

class ImagePickerState extends State<ImagePickerWidget> {
  XFile? Galleryimage;

  selectFromCamera() async {
    ImagePicker imagePicker = ImagePicker();
    var image =
        (await imagePicker.pickImage(source: ImageSource.gallery));
    setState(() {
      Galleryimage= image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Column(
        children: [
         
          Container(
          padding: EdgeInsets.only(top: 10),
            child: Galleryimage == null
                ? Center(child: Image.asset('assets/images/ppic.png'))
                : Center(child: Image.file(File(Galleryimage!.path))),
          ),
           Container(
            margin: EdgeInsets.only(top: 10),
            child: TextButton(
                onPressed: selectFromCamera, child: Text('Change photo')),
          ),
        ],
      ));
    
  }
}
