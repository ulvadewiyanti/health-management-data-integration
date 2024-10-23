### Dokumentasi Projek

oleh Ulva Dewiyanti



#### Gagasan Ide

berikut adalah diagram yang menunjukan flow dari projek yang dibuat,

![1](C:\Users\cortesdata\Desktop\1.png)

- source data link [Healthcare Management System | Kaggle](https://www.kaggle.com/datasets/anouskaabhisikta/healthcare-management-system)

- MySQL dan PostgreSQL berada di localhost

- Pada PostgreSQL terdapat 3 layer untuk menyimpan hasil pemrosesan data

- Proses ekstraksi dari MySQL ke PostgreSQL menggunakan Apache nifi, dan proses transformasi menggunakan dbt.

#### Apache Nifi Configuration

berikut adalah configuration untuk proses ekstraksi

![b544bb90-bc53-48c8-aca8-2478556a7e81](file:///C:/Users/cortesdata/Pictures/Typedown/b544bb90-bc53-48c8-aca8-2478556a7e81.png)

#### Hasil pada Datamart

![0537a391-9d19-4992-886a-22477c9e3a63](file:///C:/Users/cortesdata/Pictures/Typedown/0537a391-9d19-4992-886a-22477c9e3a63.png)

- Patient Overview: Tabel yang merangkum informasi pasien dan jumlah total spending.

- Appointment Summary: Ringkasan janji temu dengan total prosedur yang dilakukan.

- Cohort : Menganalisis perilaku pasien dari waktu ke waktu untuk memahami tren dan pola dalam janji temu, perawatan, dan pembayaran.

- Time-Series Analysis: Tabel untuk perbandingan bulan ke bulan atau tahun ke tahun, yang memberikan wawasan tentang tren pendapatan, janji temu, dan jumlah pasien.
