import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/AddFriends/add_friends_screen.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/SearchScreen/search_screen.dart';
import 'package:snapy/bottomnavbar_option5/userDetails_Screen.dart';
import 'package:snapy/bottomnavbar_option3/preview_screen.dart';

class CameraScreen3 extends StatefulWidget {
  const CameraScreen3({Key? key}) : super(key: key);

  @override
  State<CameraScreen3> createState() => _CameraScreen3State();
}

class _CameraScreen3State extends State<CameraScreen3> {
  CameraController? controller;
  List? cameras;
  int selectedCameraIndex =0;
  String? imgPath;

  @override
  void initState() {
    super.initState();
    availableCameras().then((availableCameras) {
      cameras = availableCameras;

      if(cameras!.length > 0){
        setState(() {
          selectedCameraIndex = 0;
        });
        _initCameraController(cameras![selectedCameraIndex]).then((void v) {});
      } else {
        print("No Camera available");
      }
    }).catchError((err){
      print('Error :${err.code}Error message : ${err.message}');
    });
  }

  Future _initCameraController(CameraDescription cameraDescription) async {
    if(controller != null){
      await controller!.dispose();
    }
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    controller!.addListener(() {
      if(mounted){
        setState(() {});
      }
      if(controller!.value.hasError){
        print('Camera error ${controller!.value.errorDescription}');
      }
    });

    try {
      await controller!.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }

    if(mounted){
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: _cameraPreviewWidget(),  //context
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      _cameraToggleRowWidget(),
                      _emojitog(),
                    ],
                  ),
                ),
              ),
               SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                          context: context,
                                          builder: (context) {
                                          return const UserDetails();
                                          });
                                    },
                                    child: IconButton(onPressed: (){},
                                      icon: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.supervised_user_circle_outlined,
                                          color: Colors.red,
                                            size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (_)=> const Search()));
                                      },
                                      icon: const Icon(
                                        Icons.search,
                                        color: Colors.red,
                                        size: 30,
                                      ))
                                ],
                              ),
                              const Spacer(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                          context: context,
                                          builder: (context){
                                          return const AddFriends();
                                          });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                        left: 45, right: 8.0, top: 8
                                      ),
                                      child: Icon(Icons.add_circle_outline_sharp,
                                      color: Colors.red,
                                      size: 30,),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(padding: EdgeInsets.only(
                                            bottom: 15.0
                                          ),
                                          child: Icon(Icons.rotate_right,
                                          color: Colors.red,
                                          size: 30,),),
                                          Padding(padding: EdgeInsets.only(bottom: 15.0),
                                          child: Icon(Icons.flash_off,
                                          color: Colors.red,
                                          size: 30,),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                          color: Colors.red,)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  _onCapturePressed(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 24.0),
                                  child: Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 4
                                      )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _cameraPreviewWidget(){
    if(controller == null || !controller!.value.isInitialized){
      return const Text(
        'Loading',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w900
        ),
      );
    }
    return AspectRatio(
      aspectRatio: controller!.value.aspectRatio,
      child: CameraPreview(controller!),);
  }

  Widget _cameraControllerWidget(context){
    return Expanded(child: Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          FloatingActionButton(onPressed: (){
            _onCapturePressed(context);
          },
            child: Icon(
              Icons.camera,
              color: Colors.black,
            ),
          //  child: Container(
          //   height: 45,
          //   width: 45,
          //   decoration: BoxDecoration(
          //     border: Border.all(width: 2),
          //     shape: BoxShape.circle,
          //   ),
          // ),
          backgroundColor: Colors.white,
          )
        ],
      ),
    ));
  }

  Widget _cameraToggleRowWidget(){
    if(cameras == null || cameras!.isEmpty){
      return Spacer();
    }
    CameraDescription selectedCamera = cameras![selectedCameraIndex];
    CameraLensDirection lensDirection = selectedCamera.lensDirection;

    return Expanded(child: Align(
      alignment: Alignment.centerLeft,
      child: Center(
        child: IconButton(
          onPressed: _onSwitchCamera,
          icon: Icon(
            _getCameraLensIcon(lensDirection),
            color: Colors.red,
            size: 30,
          ),
        ),
      ),
    ));
  }

  Widget _emojitog(){
    return Expanded(child: Align(
      alignment: Alignment.centerLeft,
      child: Center(
        child: IconButton(
          onPressed: _onSwitchCamera,
          icon: const Icon(Icons.emoji_emotions,
          color: Colors.red,
          size: 30,),
        ),
      ),
    ));
  }

  IconData _getCameraLensIcon(CameraLensDirection direction){
    switch (direction){
      case CameraLensDirection.back:
      return Icons.camera_front;
      case CameraLensDirection.front:
        return CupertinoIcons.switch_camera_solid;
      case CameraLensDirection.external:
        return Icons.camera;
      default:
        return Icons.device_unknown;
    }
  }

  void _showCameraException(CameraException e){
    String errorText = 'Error:${e.code}\nError message : ${e.description}';
    print(errorText);
  }

  void _onCapturePressed(context) async {
    try {
      final path = join((await getTemporaryDirectory()).path, '${DateTime.now()}.png');
      await controller!.takePicture();

      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PreviewScreen(
            imgPath: path,
          ))
      );
    } on CameraException catch(e) {
      _showCameraException(e);
    }
  }

  void _onSwitchCamera(){
    selectedCameraIndex =
        selectedCameraIndex < cameras!.length - 1 ? selectedCameraIndex + 1 : 0;
    CameraDescription selectedCamera = cameras![selectedCameraIndex];
    _initCameraController(selectedCamera);
  }

}
