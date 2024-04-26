import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_v2/tflite_v2.dart';

class ImageProcessingPage extends StatefulWidget {
  @override
  _ImageProcessingPageState createState() => _ImageProcessingPageState();
}

class _ImageProcessingPageState extends State<ImageProcessingPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  File? file;
  List<String>? _labelNames;

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(source: source);
      setState(() {
        _image = image;
        file = File(image!.path);
      });
      await detectImage(file!);
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  Future<void> detectImage(File image) async {
    int startTime = DateTime.now().millisecondsSinceEpoch;
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 3,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(() {
      _labelNames = recognitions?.map<String>((result) => result['label']).toList();
    });

    int endTime = DateTime.now().millisecondsSinceEpoch;
    print("Inference took ${endTime - startTime}ms");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 1, 86, 6),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 2, 32, 1),
          shadowColor: Colors.white,
        title: Text('Check With AI',
        style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_image != null)
              Image.file(
                File(_image!.path),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              )
            else
              Text('No image selected',
              style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _pickImage(ImageSource.gallery),
                  style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 2, 32, 1), // Change this color to the shade of green you prefer
      ),
                  child: Text('Pick Image from Gallery',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _pickImage(ImageSource.camera),
                  style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 2, 32, 1), // Change this color to the shade of green you prefer
      ),
                  child: Text('Take a Picture',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            if (_labelNames != null)
              Column(
                children: _labelNames!.map((label) => Text(
                  label,
                  style: TextStyle(
                    fontSize: 28, // Adjust the text size as needed
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Make the text bold
                  ),
                )).toList(),
              ),
          ],
        ),
      ),
    );
  }
}