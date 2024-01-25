import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final ImagePicker _imagePicker = ImagePicker();
  File? _selectedImage;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  // Firestore Initialization
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Reference storageReference = FirebaseStorage.instance
      .ref()
      .child('images');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker with Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Form fields
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16.0),

            // Image picker
            if (_selectedImage != null)
              Image.file(
                _selectedImage!,
                height: 200.0,
                width: 200.0,
              ),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image'),
            ),

            // Submit button
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // addDataToFirebase();
                uploadImageToFirebaseStorage(_selectedImage!);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> addDataToFirebase() async{
    Map<String, dynamic> data = {
      "name":_nameController.text.trim(),
      "email":_emailController.text.trim(),
      "phone":_phoneController.text.trim(),

    };
    await firestore.collection("User").add(data);
  }


  Future<void> _pickImage() async {
    final pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery, imageQuality: 65);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }


  Future<void> uploadImageToFirebaseStorage(
      File imagePath) async {
    try {

      var uploadTask = storageReference.child('${DateTime.now()}.jpg').putFile(imagePath);

      String downloadURL =
      await (await uploadTask).ref.getDownloadURL();

      await firestore.collection('User').add({
        'imageURL': downloadURL,
        'name': _nameController.text.trim(),
        'email': _emailController.text.trim(),
        'phone' : _phoneController.text.trim()
      });

      print('Image uploaded and URL saved to Fire store successfully.');
    } catch (error) {
      print('Error uploading image or saving URL to Fire store: $error');
    }
  }


}