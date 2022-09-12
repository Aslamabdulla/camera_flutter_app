import 'dart:io';

import 'package:brocamp/common_widgets/common-widgets.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart' as a;

import 'package:path_provider/path_provider.dart';

class CameraImage extends StatefulWidget {
  const CameraImage({Key? key}) : super(key: key);

  @override
  State<CameraImage> createState() => _CameraImageState();
}

class _CameraImageState extends State<CameraImage> {
  bool isCaptured = false;
  a.XFile? _imageFile;
  String? _status;
  bool? _imgLoading;
  final a.ImagePicker _imagePicker = a.ImagePicker();
  @override
  void initState() {
    super.initState();
    _status = '';
    _imgLoading = false;
    // _imagePicker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    var height1 = screen.height;
    var width1 = screen.width;
    return Scaffold(
      backgroundColor: commonLightYellow(),
      appBar: AppBar(
        backgroundColor: commonLightBlack(),
        title: Text(
          "  CAPTURE IMAGE  ",
          style: textStyleHead(),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            // _select(width1),
            null == _imageFile
                ? Container(
                    height: .5 * height1,
                    width: width1,
                    child: Center(
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage(
                                "assets/images/Camera_perspective_matte.png",
                              ),
                              height: 200),
                        ],
                      ),
                    ),
                  )
                : Center(
                    child: Container(
                      height: .7 * height1,
                      // width: width1,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.file(
                              File(_imageFile!.path),
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            SizedBox(height: .01 * height1),
            Container(
                decoration: boxDecorationStatusContainer(),
                child: Text(_status!, style: textStyleBody())),
            SizedBox(
              height: .01 * height1,
            ),
            _select(width1),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  _select(width) {
    return Container(
      decoration: boxDecorationButtonContainer(),
      padding: EdgeInsets.all(10.0),
      width: .9 * width,
      // color: commonGrey(),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 80,
                  decoration: boxDecorationButton(),
                  child: Row(
                    children: [
                      _button('Camera', a.ImageSource.camera),
                    ],
                  ),
                ),
                Container(
                  child: !isCaptured
                      ? null
                      : Container(
                          height: 80,
                          decoration: boxDecorationDeleteButton(),
                          child: _buttonclose('Camera', a.ImageSource.camera),
                        ),
                ),
                Container(
                  height: 80,
                  decoration: boxDecorationButton(),
                  child: _buttonGallery(),
                )

                // _button('Gallery', ImageSource.gallery),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _button(String text, a.ImageSource imageSource) {
    return RawMaterialButton(
        elevation: 10,
        onPressed: () async {
          setState(() {
            _imgLoading = true;
            _imageFile = null;

            isCaptured = true;
          });
          a.XFile? file = await _loadImage(imageSource);
          if (null != file) {
            setState(() {
              _imageFile = file;
              _imgLoading = false;
              _status = '  IMAGE SAVED  ';
            });
            return;
          }
          setState(() {
            _imageFile = null;
            _imgLoading = false;
            _status = '  PLEASE SELECT A IMAGE  ';
          });

          //
        },
        child: Icon(
          Icons.camera,
          size: 35,
        ));
  }

  _buttonclose(String text, a.ImageSource imageSource) {
    return RawMaterialButton(
        elevation: 10,
        onPressed: () async {
          setState(() {
            _imageFile = null;
            isCaptured = false;
            _imgLoading = true;
            _status = '  IMAGE DELETED  ';
          });
        },
        child: Icon(
          Icons.delete,
          size: 35,
          color: Colors.black,
        ));
  }

  _buttonGallery() {
    return RawMaterialButton(
        elevation: 10,
        onPressed: () {
          onGallery();

          // onGallery();
        },
        child: Icon(
          Icons.photo_library,
          size: 35,
          color: Colors.black,
        ));
  }

  Future<a.XFile?> _loadImage(a.ImageSource imageSource) async {
    a.XFile? file = await _imagePicker.pickImage(source: a.ImageSource.camera);
    // File? mFile;

    if (null != file) {
      Directory directory = await getTemporaryDirectory();
      // mFile = await _saveImageToStorage(file.path, directory);
      await GallerySaver.saveImage(file.path, albumName: 'MyBroCameraApp');
    }
    return file;
  }
}

Future onGallery() async {
  await LaunchApp.openApp(androidPackageName: 'com.sec.android.gallery3d');
  print('object');
}
