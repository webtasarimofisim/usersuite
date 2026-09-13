# 🧠 Master Suite: Çalışma Mimarisi ve Ajan Ekosistemi

Master Suite, standart bir yapay zekayı alıp onu **otonom bir yazılım şirketine (Multi-Agent System)** dönüştüren gelişmiş bir mimaridir. Bu doküman, sistemin arka planda nasıl çalıştığını ve ajanların (yapay zeka uzmanlarının) kendi aralarında nasıl koordine olduğunu açıklar.

## 👻 Ghost Engine (Hayalet Motor) Mimarisi
Sistemin kalbinde **Ghost Engine** bulunur. Siz bir komut girdiğinizde veya bir dosya kaydettiğinizde, bu motor devreye girer:
1. **İsteği Yakalar:** Komutunuz standart yapay zekaya gitmeden önce Ghost Engine tarafından havada yakalanır.
2. **Lisans & Güvenlik Kontrolü:** İstek, uzak sunucudaki (`api_verify.php`) güvenli kasanızdan geçer.
3. **Yönlendirme:** İstek onaylandığında, Ghost Engine arka plandaki en uygun ajanı (veya ajanlar grubunu) uyandırarak görevi onlara devreder.

## 🤖 Uzman Ajanlar (The Agent Roster)
Master Suite içerisinde her biri kendi alanında uzmanlaşmış, sadece o işi yapan ve birbirini denetleyen bağımsız ajanlar bulunur:

*   👔 **Proje Yöneticisi (Project Manager):** Sizden gelen büyük görevleri alır, parçalara böler, bir `PLAN.md` oluşturur ve diğer ajanlara görev dağıtır.
*   🐘 **PHP & Backend Mimarı (`ag-php-developer`):** PHP 8.3/8.4, strict types, mini-MVC ve güvenli REST API mimarilerini yazar.
*   🎨 **Frontend & UI Uzmanı (`ag-frontend-developer`):** Tailwind CSS, Alpine.js kullanarak modern, estetik ve erişilebilir (WCAG 2.2 AA) arayüzler tasarlar.
*   🗄️ **Veritabanı Uzmanı (`ag-database-expert`):** 3NF normalizasyonu, indeksleme ve performans odaklı MySQL/PostgreSQL şemaları kurar.
*   🕷️ **18 Motorlu SEO Uzmanı (`ag-seo-expert`):** Canlı web sitenizi tarar, Google/Bing algoritmalarına uygun (Engine V3.0) 14KB AST bütçesiyle onarımlar yapar.
*   🛡️ **Güvenlik ve Hata Avcısı (`ag-bug-hunter` & `ag-security-expert`):** Yazılan kodlarda OWASP açıkları (SQLi, XSS, IDOR) veya mantık hataları arar.
*   🧪 **Test Mühendisi (`ag-test-engineer`):** "Kanıt olmadan iş bitmez" kuralıyla yazılan her kodun testlerini (PHPUnit, Playwright) yazar ve çalıştırır.

## 🔄 İş Akışı: Ajanlar Nasıl Birlikte Çalışır?
Bir görev verdiğinizde süreç şu şekilde işler:

1. **Görev Dağılımı:** PM (Proje Yöneticisi) işi inceler. *Örneğin: "Bir giriş (login) sayfası yap."*
2. **Zincirleme Üretim:** 
   - Önce **Veritabanı Uzmanı** tabloyu çizer.
   - Sonra **PHP Uzmanı** güvenli login algoritmasını yazar.
   - Ardından **Frontend Uzmanı** tasarımı kodlar.
3. **Denetim (Doubt-Driven Development):** Hata avcısı ajan kodu inceleyip "Burada güvenlik açığı var mı?" diyerek şüpheci (adversarial) bir test yapar.
4. **Kalite Kapıları (4 Quality Gates):** Kod, size sunulmadan önce 4 kapıdan geçer (Sözdizimi, UTF-8 BOM Temizliği, Güvenlik, Test Kanıtı).
5. **Teslimat:** Tüm ajanlardan onay alındığında nihai kod projenize entegre edilir.

Master Suite, sizin tek bir kişiyle değil, dev bir yapay zeka mühendislik departmanıyla aynı anda çalışmanızı sağlayan bir devrimdir.
