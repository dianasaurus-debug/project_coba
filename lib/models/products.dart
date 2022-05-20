class Product {
  late String nama_produk;
  late int harga;
  late String kandungan_gizi;
  late String deskripsi;
  late String foto_produk;
  late int jenis_produk;
  late int stock;
  late int id;

  Product({this.id = 0,
    this.jenis_produk = 0,
    this.nama_produk = '',
    this.stock = 0,
    this.harga = 0,
    this.kandungan_gizi = '',
    this.deskripsi = '',
    this.foto_produk = ''});

  Product.fromJson(Map<String, dynamic> json)
      : nama_produk = json['nama_produk'],
        id = json['id'],
        kandungan_gizi = json['kandungan_gizi'],
        deskripsi = json['deskripsi'],
        foto_produk = json['foto_produk'],
        harga = json['harga'],
        jenis_produk = json['jenis_produk'],
      stock = json['stock'];

  Map<String, dynamic> toJson() => {
    'id' : id,
    'nama_produk': nama_produk,
    'harga': harga,
    'deskripsi': deskripsi,
    'jenis_produk' : jenis_produk,
    'kandungan_gizi': kandungan_gizi,
    'foto_produk': foto_produk,
    'stock': stock
  };
}