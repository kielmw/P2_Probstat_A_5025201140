# P2_Probstat_B_5025201140


#1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

![image](https://user-images.githubusercontent.com/73664125/170866930-3a0a5a46-7e46-4e38-9830-256ef02fde9f.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
diatas
Standar deviasi didapat senilai 6.35959468
<br> ![1_sd](https://user-images.githubusercontent.com/99122278/170871450-b72d7837-95d5-4190-ab43-585abeec725f.png) </br>

c) karena nilai t lebih besar dari nilai kritis t dengan tingkat signifikasi 5%, maka dapat disimpulkan bahwa H0 ditolak dan H1 diterima, yaitu terdapat pengaruh signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dans esuah melakuan aktivitas A

b. carilah nilai t (p-value)
mencari p-value
<br>
![1_ttest](https://user-images.githubusercontent.com/99122278/170870347-bfcffc93-4e81-42ab-8934-722c23088c1b.png)
</br>
ditemukan nilai p-valuenya adalah 6.003e-5 atau 0.00006003
c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”


#2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).
 
 ```
 install.packages("BSDA")
 library(BSDA)
 zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
          alternative = "less", mu = 0,
          conf.level = 0.95)
 ```
          
 #### a. Apakah Anda setuju dengan klaim tersebut?
 
 ```
 Setuju. Karena bila kita mengacu pada pengujian z, didapat kesimpulan bahwa H0 ditolak sehingga mobil rata-rata dikemudikan lebih
 >20000 km
 ```
 
 #### b. Jelaskan maksud dari output yang dihasilkan!
 ```
 Output dari pengujian z-nya adalah hipotesis alternatif yang mana >20000 atau H1 diterima sehingga klaim benar
 ```
 
 #### c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
 ```
 nilai t dari uji z adalah mendekati 0, dari hasil nilai t tersebut hipotesis awal dapat ditolak dan H1 diterima
 ```

3. Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

![image](https://user-images.githubusercontent.com/73664125/170867233-070c35ad-deca-43de-a8de-d460539042fa.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :
### A
H0 dapat diketahui sebagai berikut,<br>
![ab_ac](Images/3a1.png)<br>
dan H1 dapat diketahui sebagai berikut,<br>
![ab_ac](Images/3a2.png)

### B
Untuk menghitung sampel statistik, digunakan `tsum.test()`.<br>
![ab_ac](Images/3b.png)

### C
Dilakukan penggunaan `plotDist()` dengan parameter `df` bernilai `2`. Sehingga didapatkan hasil sebagai berikut,<br>
![ab_ac](Images/3c.png)

### D
Untuk nilai kritikal, dapat digunakan `qchisq()` dengan parameter `df` bernilai `2`.<br>
![ab_ac](Images/3d.png)

### E
Aksinya adalah : `({a}_{a∈A})`, Kemungkinan konsekuensi : `({c}_{c∈C})` (tergantung pada keadaan dan tindakan), maka keputusan dapat dibuat dengan `t.test()`.

### F
Tidak terdapat perbedaan rata-rata jika ditinjau dari uji statistik, namun akan ada (tidak signifikan) jika dipengaruhi nilai kritikal.

4. Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika :
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama
Maka Kerjakan atau Carilah:
### A
```
dataSet  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(dataSet)
head(dataSet)
attach(dataSet)
dataSet$V1 <- as.factor(dataSet$V1)
dataSet$V1 = factor(dataSet$V1,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih", "Kucing Oren"))
class(dataSet$V1)
group1 <- subset(dataSet, V1 == "Kucing Oren")
group2 <- subset(dataSet, V1 == "Kucing Hitam")
group3 <- subset(dataSet, V1 == "Kucing Putih")
```
Sebelum membagi jenis spesies menjadi 3 grup, data dari url di atas dibaca dengan `read.table(url())`. Kemudian, `dataSet` diubah menjadi grup dan diperiksa apakah grup itu menyimpan nilai. Kemudian, tiap nilai akan dibagi menjadi 3 dengan menggunakan `subset()`.

### B
Dengan menggunakan `bartlett.test()` untuk mencari Homogeneity of variances, didapatkan nilai p-value = 0.8054. Sehingga dapat ditarik kesimpulan bahwa Bartlett's K-squared memiliki nilai sebesar 0.43292 dan df bernilai 2.

### C
Untuk menggambar model linier, digunakan `qqnorm()` dan `qqnorm` `qqline()`.<br>
![ab_ac](Images/4c.png)

### D
Nilai p-value = 0.8054.

### E
Dapat dilakukan dengan menggunakan perintah `lm()`, diikuti dengan `anova()`, dan terakhir menggunakan `TukeyHSD(aov())`.

### F
Untuk melakukan visualisasi, dapat digunakan perintah `library()` diikuti dengan `ggplot()`.
5. Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut:
a. Buatlah plot sederhana untuk visualisasi data
b. Lakukan uji ANOVA dua arah
c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
d. Lakukan uji Tukey
e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
Berikut adalah contoh daftar package dan fungsi yang dapat digunakan (dapat pula
menggunakan contoh lainnya)
● Packages: readr, ggplot2, multcompView, dplyr
● Function: aov, TukeyHSD, qplot, group_by, summarise, multcompLetters4

