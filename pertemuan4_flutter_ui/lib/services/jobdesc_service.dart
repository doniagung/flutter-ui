import 'package:dio/dio.dart';

class JobdescService{
  final Dio _dio = Dio();

  final String _baseUrl = 'hhttps://ixhrajndvhehvxyirrwt.supabase.co/rest/v1/';
  final String _apiKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml4aHJham5kdmhlaHZ4eWlycnd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA5ODExODksImV4cCI6MjAzNjU1NzE4OX0.vjrrbXHC3639-4Lz6LuzTuymsfPIKjvGDY5UHcwiRRw';

  Future<Response> getJondesc() async{
    var baseUrl = '${_baseUrl}Job_Description?select=*';
    final response = await _dio.get(
      baseUrl, options: Options(
        headers: {
          'apikey' : _apiKey,
          'Authorization' : 'Bearer $_apiKey'
        },
      ),
    );

  return response;
  }

  Future<Response> addReport(Map<String, dynamic> newReportData) async{
  var baseUrl = 'https://kmcrslkjoptlavxsmeti.supabase.co/rest/v1/reports';
  final response = await _dio.post(
    baseUrl,
    data: newReportData,
    options: Options(
      headers: {
          'apikey' : _apiKey,
          'Authorization' : 'Bearer $_apiKey',
          'Content-Type' : 'application/json',
          'Prefer' : 'return=representation'
        },
    )
  );
  
  return response;
  }

  Future<Response> deleteReport(int reportId) async{
    var baseUrl = '${_baseUrl}reports?id=eq.$reportId';
    final response = await _dio.delete(
      baseUrl,
      options: Options(
        headers: {
          'apikey': _apiKey,
          'Authorization': 'Bearer $_apiKey',
        },
      ),
    );
    return response;
  }

}