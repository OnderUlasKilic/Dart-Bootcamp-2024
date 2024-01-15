void main() {
  String userName = "HaliSaha";
  int haliSahaCapacity = 100;
  String halisahaName = "UlasınSahası";

  String musteri1Name = "Ahmet";
  int musteri1Player = 20;

  String musteri2Name = "Ali";
  int musteri2Player = 50;

  int sum = musteri1Player + musteri2Player;

  int kalanKapasite = haliSahaCapacity - sum;

  print("Müsterilerin toplam oyuncu sayısı: $sum");

  print("Kalan kapasite: $kalanKapasite");
}
