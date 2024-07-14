import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter_ui/models/jobdesc_model.dart';
import 'package:pertemuan4_flutter_ui/services/jobdesc_service.dart';

class JobdescController {
  final JobdescService _jobdescService = JobdescService();

  List<JobdescModel>? _jobdescs;

  List<JobdescModel>? get jobdescs => _jobdescs;

  Future<void> getJondesc() async {
    try {
      final response = await _jobdescService.getJondesc();
      if (response.statusCode == 200) {
        _jobdescs = (response.data as List<dynamic>)
            .map((e) => JobdescModel.fromJson(e))
            .toList();
      }
    } catch (e) {
      debugPrint('Error $e');
    } finally {
    }
  }

  // void addReport(
  //     BuildContext context, Map<String, dynamic> newReportData) async {
  //   _isLoaded = true;
  //   notifyListeners();
  //   try {
  //     final response = await _reportsService.addReport(newReportData);
  //     if (response.statusCode == 201) {
  //       getReports();
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text('Report added failed'),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     debugPrint('Error $e');
  //   } finally {
  //     _isLoaded = false;
  //   }
  // }

  // void deleteReport(int reportId) async {
  //   _isLoaded = true;
  //   notifyListeners();
  //   try {
  //     final response = await _reportsService.deleteReport(reportId);
  //     if (response.statusCode == 204) {
  //       getReports();
  //     }
  //   } catch (e) {
  //     debugPrint('$e');
  //   } finally {
  //     _isLoaded = false;
  //   }
  // }
}