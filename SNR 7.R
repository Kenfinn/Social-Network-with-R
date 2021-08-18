#import data
##import data CSV 
heights <- read.csv(file = "data/heights.csv")
library(tidyverse)
#read_csv jika pemisah kolomnya adalah koma (,)
heights2 <- read_csv(file = "data/heights.csv")
#read_csv2 jika pemisah kolomnuya adalah (;)
netflix_titles <- read.csv(file = "data/netflix_titles.csv")


#import data XLSX
install.packages("xlsx")
library(xlsx)
anggaran <- read.xlsx(file = "data/Anggaran (Bidang) - 2003.xlsx", sheetIndex = 1 , startRow = 4)

umkm <- read.xlsx(file = "data/umkm-binaan-2017.xlsx", sheetIndex = 2 , startRow = 7)

#import data TXT
happy <- read_lines(file = "data/happy.txt")

#import data TSV 
petisi <- read_tsv(file = "data/petisiData.tsv")

install.packages("haven")
library(haven)
#import data stata
stata_data <- read_dta(file ="data/salary.dta")
#import data spss
spss_data <- read_sav(file = "data/PsychBike.sav")
#import data sas
sas_data <- read_sas("data/hhsurvey.sas7bdat")

health_survey <- read_sav(file = "data/HLTH1025_2016.sav")

glimpse(petisi)
str(petisi)
summary(anggaran)

#Transformasi Data 
library(tidyverse)
library(nycflights13)
df_flights <- flights
##filtes
flights_january <- filter(.data = df_flights, month == 1 )
##checking if our function work properly 
summary(flights_january$month)
##kuis : filter data dari df_flisghts untuk bulan january dan februari 
flights_jan_feb <- filter(.data = df_flights, month == 1| month == 2 )

flights_jan_pipeline <- df_flights %>%
  filter(month == 1 )

flights_feb_pipeline <- df_flights %>%
  filter(month == 2 )

#bisiness question :flight di hari natal
flight_christmass <- df_flights %>%
  filter(month == 12 & day == 25)

#double piplene 
flight_christmas <- df_flights %>%
  filter(month == 12 )%>%
  filter (day == 25 )

#chall : filTEr penerbangan tanggal 11 sepetember dan 30 september dengan menggunakan pipeline 
flight_11_30_sept <- df_flights %>%
  filter (month == 9)%>%
  filter (day == 11 | day == 30 )


#tugas 
#2. flew to houston (IAH or HOU)
flight_to_houston <- df_flights %>%
  filter(dest == "IAH" | dest == "HOU")
#4. departed in summer (july,Agust and spetember)
flight_jully_agus_sept <- df_flights %>%
  filter(month == 7 | month == 8 | month == 9 )
#4. departed in summer (july,Agust and spetember)
flight_arrival_dellay <- df_flights %>%
  filter(arr_delay>=120 )


##arange 
##select 
##mutate
