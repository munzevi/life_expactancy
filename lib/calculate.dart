import 'user_data.dart';

class Calculate {
  UserData userData;
  Calculate(this.userData);

  double result() {
    double sonuc;
    sonuc = 90 + userData.currentSporValue - userData.currentSigaraValue;
    sonuc = sonuc + (userData.boy / userData.kilo);
    if (userData.seciliCinsiyet == 'KADIN') {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}
