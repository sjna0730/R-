# 매트릭스, 데이터프레임 다루기

iris
#행과 열의 개수를 표시하는 함수
dim(iris)

#행의 개수만 출력
nrow(iris)
#열의 개수만 출력
ncol(iris)

#열의 이름 출력
colnames(iris)

# 행의 이름 출력
rownames(iris)

#데이터셋의 앞부분 일부 출력
head(iris)
#데이터셋의 뒷부분 일부 출력
tail(iris)
#데이터셋의 요약 정보를 출력
str(iris)
#데이터셋의 자료구조 출력
class(iris)
#5번째 항목인 품종은 팩터이다(Levels 자동 출력)
class(iris[,5])
levels(iris[,5])
#중복된 값 제거 후 품종의 종류 확인
unique(iris[,5])
# 5번째 열은 팩터이기 때문에 합계, 평균 출력 못함
colSums(iris[,-5]) # 5번째 열 제외
colMeans(iris[,-5])
# 행의 합계, 평균
rowSums(iris[,-5])
rowMeans(iris[,-5])

#빈도수 확인
table(iris[,"Species"])

# 매트릭스 행열 서로 바꾸기
z <- matrix(1:20, nrow = 4, ncol = 5)
z
t(z) # t() 는 행과 열의 값을 서로 바꾸는 함수

# subset() 함수는 조건에 맞는 값을 추출함
setosa <- subset(x = iris, Species=="setosa")
setosa
class(setosa)

v1 <- subset(x = iris, (Sepal.Length>5.0) & (Sepal.Width>4.0))
v1

# 매트릭스(행열)에 대한 산술연산
a <- matrix(data = 1:20, nrow = 4, ncol = 5)
b <- matrix(1:20, 4, 5)

a
a*2
a+b
b-a
class(a)
class(b)
state.x77

str(state.x77)
dim(state.x77)
class(state.x77)

# 매트릭스를 데이터프레임 형태로 변경하고자 할때
st <- as.data.frame(state.x77)
st
class(st)

# 데이터프레임에 접근하는 방법
iris[,1]
iris$Sepal.Length[1]
st$Murder # $ 를 써서 접근하는것 추천

# 접두사로 is가 있으면 ~~이냐 라는 확인하는 용
is.matrix(st) # st 가 매트릭스 ~ 냐?
is.data.frame(st) 

