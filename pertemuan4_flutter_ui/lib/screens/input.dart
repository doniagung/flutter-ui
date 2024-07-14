import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class JobInputPage extends StatefulWidget {
  @override
  _JobInputPageState createState() => _JobInputPageState();
}

class _JobInputPageState extends State<JobInputPage> {
  final _formKey = GlobalKey<FormState>();
  File? _companyLogo;
  final picker = ImagePicker();

  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _jobTitleController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _companyLogo = File(pickedFile.path);
      }
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Lakukan sesuatu dengan data yang dimasukkan, seperti menyimpannya ke database
      print('Nama Perusahaan: ${_companyNameController.text}');
      print('Jabatan: ${_jobTitleController.text}');
      print('Lokasi: ${_locationController.text}');
      print('Gaji: ${_salaryController.text}');
      if (_companyLogo != null) {
        print('Logo Perusahaan: ${_companyLogo!.path}');
      } else {
        print('Logo Perusahaan: Tidak ada logo yang dipilih');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Pekerjaan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: _pickImage,
                child: _companyLogo != null
                    ? Image.file(
                        _companyLogo!,
                        height: 100,
                        width: 100,
                      )
                    : Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[300],
                        child: Icon(Icons.camera_alt),
                      ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _companyNameController,
                decoration: InputDecoration(labelText: 'Nama Perusahaan'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan nama perusahaan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _jobTitleController,
                decoration: InputDecoration(labelText: 'Jabatan yang Dibutuhkan'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan jabatan yang dibutuhkan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _locationController,
                decoration: InputDecoration(labelText: 'Lokasi Perusahaan'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan lokasi perusahaan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _salaryController,
                decoration: InputDecoration(labelText: 'Gaji Perbulan'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan gaji perbulan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _companyNameController.dispose();
    _jobTitleController.dispose();
    _locationController.dispose();
    _salaryController.dispose();
    super.dispose();
  }
}
