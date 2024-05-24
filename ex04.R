# 외부데이터를 불러오는 방법을 습득

# 1. csv 라는 확장자를 지닌 파일을 읽어와서 데이터프레임에 저장
# csv(comma seperated values) 확장자는 범용적으로 많이 사용
setwd("D:|source") # 작업폴더 지정하는 방법

df_exam <- read.csv("csv_exam.csv", header = T) # 작업폴더 안에 해당 파일을 읽어옴
df_exam

# View() 데이터를 좀더 가독성을 좋게 만들어주는 함수 V 대문자
View(df_exam)

# rm() 은 remove 의 약자로 변수값을 삭제해줌
rm(df_exam)

# 내장데이터셋인 iris 의 일부데이터만 추출하여 외부데이터로
# 내보내는 과정
setwd("C:/R작업/Practice_Chap03(매트릭스와 데이터프레임)")
setoas <- subset(x=iris, Species=="setosa")
setosa
class(setosa)
write.csv(x=setosa, "setosa.csv", row.names = F)

# 아래와 같이 excel 파일을 R로 가져오기 위해서는
# readxl 패키지를 인스톨하고, library 함수를 통해서
# readxl을 쓰겠다고 로딩하는 방법이다.
install.packages("readxl")
library(readxl)
df_excel <- read_excel("excel_exam.xlsx")
View(df_exam)
head(df_exam)
class(df_exam)

mean(df_exam$math) # 평균 구하기
mean(df_exam$science)

# R에서 조작한 데이터를 외부 엑셀파일로 내보내기를 위해선
# xlsx 패키지를 설치하고 로딩해야한다.
install.packages("xlsx")
library(xlsx)

setosa
# row.names = F 를 하면 엑셀에서 첫번째 열이 없어짐짐
write.xlsx(x=setosa, "setosa.xlsx", row.names = F)
