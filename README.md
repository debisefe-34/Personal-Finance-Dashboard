# 📊 SQL Tabanlı ve "Clean" Tasarımlı Kişisel Finans Raporu

Bu proje; kişisel gelir ve gider verilerinin ilişkisel veritabanı mantığıyla SQL ortamında modellenmesi, temizlenmesi ve ardından Power BI üzerinde modern UI/UX prensiplerine uygun, "clean design" (minimalist) bir finansal kokpite dönüştürülmesini içeren uçtan uca bir iş zekası (BI) çalışmasıdır.

## 🚀 Proje Mimarisi & Teknik Yetkinlikler
- **Veri Depolama & Modelleme:** SQL (Gelir ve Gider tablolarının ilişkisel mimaride kurgulanması).
- **Analitik Hesaplamalar (DAX):** Power BI üzerinde dinamik bütçe durumları, net bakiye metrikleri ve dilimleyicilerle (slicer) tam uyumlu dinamik başlık yapılarının kurgulanması.
- **Veri Görselleştirme:** Karmaşık veri etiketleri ve kaba arka planlar yerine; tamamen transparan, odak noktası net ve karar destek mekanizmasını hızlandıran minimalist dashboard tasarımı.

## 📈 Dashboard Görünümü
> Raporun canlı ve dinamik tasarım çıktısına ait ekran görüntüsü aşağıda yer almaktadır:
> *(Yüklediğin ekran görüntüsünü buraya bağlayacağız)*

## 💡 Örnek Dönem Analizi ve Çıkarımlar
- **Gelir Dağılımı:** En yüksek gelir kalemi %54,31 ile Genç İŞKUR projesinden sağlanmıştır.
- **Gider Analizi:** Toplam harcamaların %46,75'i sabit gider olan Kira ödemesine aittir. Yemek harcamaları %12,86 ile bütçede önemli bir yer tutmaktadır.
- **Bütçe Sağlığı:** İlgili dönemde bütçe -7.590 TL net açık vermiştir, bu durum harcama optimizasyonu yapılması gerektiğine işaret eden dinamik bir karar destek göstergesidir.

### 📊 Dashboard Görünümü

![Mayıs Ayı Harcama Özeti](mayis_ayi_harcama_ozeti.png)

---

### 🔍 Dashboard Analizi ve Tasarım Notları

Görselleştirme sürecinde projenin ana hedeflerinden biri olan **"Clean Design" (Sade ve İşlevsel Tasarım)** prensiplerine sadık kalınmıştır:

* **Renk Paleti Seçimi:** Finansal hareketlerin doğasına uygun olarak gelen transferler (gelirler) için **Yeşil** tonları, giden transferler (giderler) için ise **Kırmızı/Turuncu** tonları tercih edilmiştir. Bu sayede kullanıcının bütçe durumunu ilk bakışta "tarayabilmesi" (visual scanning) sağlanmıştır.
* **Veri Ayrımı:** SQL tarafında ikiye böldüğümüz veri yapısı, dashboard üzerinde de sol (Gelen) ve sağ (Giden) olmak üzere iki ana sütun halinde konumlandırılarak karmaşa önlenmiştir.
* **Net Bakiye Vurgusu:** Panonun alt orta kısmında yer alan **Net Bakiye Kartı**, Mayıs ayının finansal özetini tek bir odak noktasında birleştirerek karar destek mekanizmasını güçlendirmektedir.
