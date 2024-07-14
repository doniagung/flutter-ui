class JobdescModel {
  final int id;
  final String nama_perusahaan;
  final String lowongan;
  final String lokasi;
  final String gaji;

  JobdescModel(
      {required this.id,
      required this.nama_perusahaan,
      required this.lowongan,
      required this.lokasi,
      required this.gaji});

  factory JobdescModel.fromJson(Map<String, dynamic> json) {
    return JobdescModel(
        id: json['id'],
        nama_perusahaan: json['nama_perusahaan'],
        lowongan: json['lowongan'],
        lokasi: json['lokasi'],
        gaji: json['gaji']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_perusahaan': nama_perusahaan,
      'lowongan': lowongan,
      'lokasi': lokasi,
      'gaji': gaji
    };
  }
}