#데이터프레임 알아보기

city <- c("서울", "도쿄", "워싱턴") #문자형 벡터
rank <- c(1,2,3)
a <- c(1:10) #정수형 벡터
b <- c(seq(0.0, 1.0, 0.1)) #뉴메릭 벡터
#class 라는 함수는 매개변수로 들어간 변수에 담긴
#데이터셋 구조를 알려준다
class(rank)
#str() 라는 함수는 요약정보를 알려준다.
str(rank)

# 문자형과 정수형 벡터가 합쳐짐
cityinfo <- data.frame(city, rank) 
cityinfo
# 데이터프레임도 2차원 데이터타입이니
# 인덱스로 접근 가능하고 수정도 가능하다.
cityinfo[1,1]
class(cityinfo[1])
class(cityinfo[,2])

class(iris)
# dim = 행과 열의 갯수를 순서대로 알려줌
dim(iris)
dim(cityinfo)

str(iris)

# iris 는 R에서 제공해주는 데이터셋셋
iris[1,1]
iris[,"Species"]
# iris 데이터셋에서 sepal.length의 평균값
mean(iris[, "Sepal.Length"]) 


