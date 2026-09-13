# 🚀 Master Suite - Kullanım Kılavuzu

Master Suite, yapay zeka deneyiminizi profesyonelleştiren arka plan (Ghost Engine) motorudur.

## 🛠️ Kurulum Adımları
**Seçenek 1: Terminal ile Hızlı Kurulum (Önerilen)**
Eklentiyi doğrudan GitHub üzerinden yapay zeka sisteminize kurmak için terminalinize (CMD/PowerShell/Bash) şu komutu girin:
```bash
git clone https://github.com/webtasarimofisim/usersuite.git ~/.gemini/config/plugins/master-suite
```
*(Eğer Antigravity CLI kullanıyorsanız alternatif olarak şu komutu girebilirsiniz: `agy plugin install https://github.com/webtasarimofisim/usersuite`)*

**Seçenek 2: Manuel Kurulum**
1. Sistemi ZIP dosyası olarak doğrudan şu URL'den indirin: [https://github.com/webtasarimofisim/usersuite/archive/refs/heads/main.zip](https://github.com/webtasarimofisim/usersuite/archive/refs/heads/main.zip)
2. İndirdiğiniz dosyaları ZIP'ten çıkartıp yapay zeka eklenti dizininize (Örn: `~/.gemini/config/plugins/master-suite/`) kopyalayın.

**Aktifleştirme:**
Kurulum bittikten sonra yazılımınızı yeniden başlatın veya yeni bir sohbet penceresi açın.

## ⌨️ Komutlar ve Kullanım
Sohbet ekranına aşağıdaki komutları girerek sistemi yönetebilirsiniz:

*   **`/suite baslat`** : Sistemi aktifleştirir ve 30 günlük ücretsiz deneme sürümünüzü başlatır. Bu komutu girdikten sonra sistem "Sürekli Aktif" (Daemon) moduna geçer.
*   **`/lisans KODUNUZ`** : [betasoft.com.tr/mastersuite](https://www.betasoft.com.tr/mastersuite) adresinden satın aldığınız PRO lisans anahtarını (Örn: `PRD-XYZ...`) sisteme tanımlar ve limitsiz kullanıma açar.
*   **`/lisans`** : O anki lisans durumunuzu, kalan sürenizi, donanım kimliğinizi (HWID) ve e-posta adresinizi gösteren şık bir **Yönetim Paneli (Dashboard)** açar.
*   **`/suite durdur`** : Yapay zeka arka plan (Ghost) motorunu geçici olarak durdurur ve standart yapay zekaya dönmenizi sağlar.
*   **`/lisans kaldir`** : Lisansınızı ve deneme sürümünüzü bu cihazdan tamamen siler. (Bilgisayar değiştireceğiniz veya lisansınızı başka cihaza taşıyacağınız zaman kullanın).

## 🛡️ Güvenlik Notu
Lisansınız bilgisayarınızın fiziksel **Donanım Kimliğine (HWID)** kilitlenmektedir. PRO lisanslar aynı anda birden fazla cihazda kullanılamaz.
