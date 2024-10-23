### Dokumentasi Projek

oleh Ulva Dewiyanti



#### Gagasan Ide

berikut adalah diagram yang menunjukan flow dari projek yang dibuat,

![flow](https://github.com/ulvadewiyanti/health-management-data-integration/blob/main/1.png?raw=true)

- source data link [Healthcare Management System | Kaggle](https://www.kaggle.com/datasets/anouskaabhisikta/healthcare-management-system)

- MySQL dan PostgreSQL berada di localhost

- Pada PostgreSQL terdapat 3 layer untuk menyimpan hasil pemrosesan data

- Proses ekstraksi dari MySQL ke PostgreSQL menggunakan Apache nifi, dan proses transformasi menggunakan dbt.

#### Apache Nifi Configuration

berikut adalah configuration untuk proses ekstraksi
![Apache nifi](https://github.com/ulvadewiyanti/health-management-data-integration/blob/main/2.png?raw=true)

#### Hasil pada Datamart
![report](https://github.com/ulvadewiyanti/health-management-data-integration/blob/main/3.png?raw=true)

- Patient Overview: Tabel yang merangkum informasi pasien dan jumlah total spending.

- Appointment Summary: Ringkasan janji temu dengan total prosedur yang dilakukan.

- Cohort : Menganalisis perilaku pasien dari waktu ke waktu untuk memahami tren dan pola dalam janji temu, perawatan, dan pembayaran.

- Time-Series Analysis: Tabel untuk perbandingan bulan ke bulan atau tahun ke tahun, yang memberikan wawasan tentang tren pendapatan, janji temu, dan jumlah pasien.
