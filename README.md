# 📊 Mayıs Ayı Finansal Hesap Özeti Veri Analizi & Dashboard Projesi

Bu proje; ham bir finansal işlem geçmişi veri setinin MS SQL Server (SSMS) kullanılarak analize hazır hale getirilmesi, yapılandırılması ve "Clean Design" (Sade ve İşlevsel Tasarım) prensiplerine uygun olarak görselleştirilmesi sürecini kapsamaktadır.

---

## 🛠️ Kullanılan Teknolojiler ve Yetkinlikler
* **Veritabanı Yönetimi:** MS SQL Server (SSMS)
* **Veri Hazırlık ve ETL:** SQL (Veri Tipleri Dönüşümü, Tablo Ayrıştırma, `sp_rename` ile Sütun Yapılandırma)
* **Görselleştirme & Dashboard:** "Clean Design" Odaklı Raporlama ve Veri Analizi
* **Sürüm Kontrolü:** Git & GitHub

---

## 💾 Veri Hazırlık ve SQL Süreci (ETL)

Ham veri setindeki anlamsız isimlendirmeler ve karışık yapı, SQL Server üzerinde yürütülen sorgularla optimize edilmiştir. 

### 1. Sütun İsimlerinin Güncellenmesi
Anlam karmaşasını önlemek ve veri standartlarını sağlamak adına ham tablodaki `column1`, `column2` gibi isimlendirmeler SQL Server saklı yordamı (`sp_rename`) kullanılarak aşağıdaki gibi anlamlı hale getirilmiştir:
* `column1` ➡️ `Tarih` *(Date formatına uygun yapılandırıldı)*
* `column2` ➡️ `Islem_Turu` *(Gelen / Giden ayrımı için)*
* `column3` ➡️ `Kategori` *(Finansal harcama/gelir kalemi)*
* `column4` ➡️ `Aciklama` *(İşlem detayları)*
* `column5` ➡️ `Tutar` *(Sayısal değerler)*

### 2. Verinin Mantıksal Olarak Parçalanması
Analizlerin daha tutarlı yapılması, performans optimizasyonu ve daha net bir görselleştirme altyapısı kurulması amacıyla ana tablo, `Islem_Turu` baz alınarak iki farklı fiziksel tabloya ayrılmıştır:
* **Gelen_Islemler:** Hesaba giren nakit akışlarını, bursları ve transferleri içerir (Örn: Genç İŞKUR, KYK Bursu).
* **Giden_Islemler:** Harcamaları, faturaları, kart ödemelerini ve hesaptan çıkan transferleri içerir (Örn: Kira, Market, Yemek).

> 💡 *Süreçte kullanılan tüm SQL kodlarına, tablo oluşturma betiklerine ve veri manipülasyon adımlarına `mayis_ayi_hesap_ozetim.sql` dosyasından ulaşabilirsiniz.*

---

## 📈 Dashboard Görünümü

![Mayıs Ayı Harcama Özeti](mayis_ayi_harcama_ozeti.png)

---

## 🔍 Dashboard Analizi ve Tasarım Notları

Görselleştirme ve raporlama aşamasında, iş zekası süreçlerinde kabul gören **"Clean Design"** kurallarına tam uyum sağlanmıştır:

* **Stratejik Renk Paleti:** Finansal okuryazarlığa ve kullanıcı deneyimine (UX) katkı sağlaması açısından; gelen transferler (gelirler) için güven veren **Yeşil** tonları, giden transferler (giderler) için ise uyarıcı/odaklayıcı **Kırmızı/Turuncu** tonları tercih edilmiştir. Bu sayede "Görsel Tarama" (Visual Scanning) kolaylaştırılmıştır.
* **Simetrik ve Düzenli Düzen (Layout):** SQL mimarisinde kurulan iki parçalı veri yapısı, tasarıma da yansıtılmıştır. Pano; sol tarafta gelir analizi, sağ tarafta ise gider dağılımı olacak şekilde iki ana sütunda simetrik olarak konumlandırılmıştır.
* **Karar Destek Odağı (Net Bakiye):** Panonun alt orta kısmında yer alan **Net Bakiye** vurgusu, kullanıcının o aya ait finansal sağlık durumunu tek bir saniyede görebilmesini sağlayarak karar destek mekanizmasını güçlendirir.

---

## 🎯 Proje Çıkarımları & Finansal Özet

* **Ana Gelir Kaynağı:** Mayıs ayındaki toplam gelirin %54,31'ini Genç İŞKUR ödemesi oluşturarak en büyük nakit girdisini sağlamıştır.
* **En Büyük Gider Kalemi:** Toplam harcamalar incelendiğinde "
