# Soal Nomor 1
# A

# Data sebelum pengaruh
d1 <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
# Data setelah pengaruh
d2 <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
# Cek data
data <- data.frame(
  group = rep(
    c("Before", "After"),
    each = 9
  ),
  saturation = c(d1, d2)
)
print(data)
# Std Dev. sebelum dan sesudah pengaruh
sd_d1 <- sd(d1)
sd_d2 <- sd(d2)

sd_d1
sd_d2

# B
t.test(d1, d2, alternative = "greater", var.equal = FALSE)

# C
var.test(d1, d2)

t.test(d1, d2, mu = 0, alternative = "two.sided", var.equal = TRUE)

# NOMOR 2
library(BSDA)

# lebih dari 20000km
# ukuran sampel (n) = 1000
# mean (x) = 23500
# sd = 3900
# H0 = miu <= 20000
# H1 = miu > 20000
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100,
          alternative = "greater", mu = 20000,
          conf.level = 0.95)

#a) Setuju, karena kesimpulan dari uji z menolak H0,
# sehingga mobil dikemudikan rata-rata lebih dari
# 20000 kilometer per tahun

#b) Output dari z test adalah, hipotesis alternatif
# alternative hypothesis: true mean is greater than 20000
# atau H1 diterima sehingga klaim benar. 

#c) P-value dari uji tes z adalah 2.2e-16 atau mendekati 0,
# dari hasil p-value tersebut hipotesis awal dapat ditolak
# dan H1 diterima.

#nomor 3
#3a
cat("H0 : mu = mu0","\n","mu !=(tidak sama dengan) mu0")

#3c
xbar3 = 2.79
mu03 = 3.64
s3 = 1.32
n3 = 27              
t3 = (xbar3-mu03)/(s3/sqrt(n3)) 
t3  

#3d nilai kritis
alpha3 = 0.05 
t.alpha3 = qt(1-alpha3, df=2) 
t.alpha3 

#3e
cat("Keputusan : Gagal Tolak H0")

#3f
cat("Kesimpulan : Tidak ada perbedaan pada rata-rata jumlah saham perusahaan di dua kota tersebut")

#nomor 4
# a)
my_data <- read.delim(file.choose())

my_data$Group <- as.factor(my_data$Group)
my_data$Group = factor(my_data$Group, labels = c("grup1", "grup1", "grup3"))


grup1 <- subset(my_data, Group == "grup1")
grup2 <- subset(my_data, Group == "grup1")
grup3 <- subset(my_data, Group == "grup3")

qqnorm(grup1$Length)

qqnorm(grup2$Length)

qqnorm(grup3$Length)

# berdasarkan plot kuantil normal di atas, tidak ditemukan outlier utama pada homogenitas varians

# b)
bartlett.test(Length ~ Group, data = my_data)

# c)
model1 <- aov(Length ~ Group, data = my_data)
summary(model1)

# d)
# nilai p adalah 0.0013 dimana kurang dari 0.005, sehingga h0 ditolak

# e)
TukeyHSD(model1)

# f)
library("ggplot2")

ggplot(my_data, aes(x = Group, y = Length)) + 
  geom_boxplot(fill = "white", colour = "black") + 
  scale_x_discrete() + xlab("Group") + ylab("Length")

# nomor 5
library(dplyr)
library(multcompView)

gtl <- read.csv(file.choose())

# a)
qplot(x = Temp, y = Light, geom = "point", data = gtl) +
  facet_grid(.~Glass, labeller = label_both)

# b)
gtl$Glass <- as.factor(gtl$Glass)
gtl$Temp_Factor <- as.factor(gtl$Temp)
str(gtl)

gtlaov <- aov(Light ~ Glass*Temp_Factor, data = gtl)
summary(gtlaov)

# c)
data_summary <- group_by(gtl, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))

print(data_summary)

# d)
tukey <- TukeyHSD(gtlaov)
print(tukey)

# e)
tukey.cld <- multcompLetters4(gtlaov, tukey)
print(tukey.cld)
