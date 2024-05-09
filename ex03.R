#2024-05-09 R수업 7차시
#벡터의 연산
d <- c(1,10,5,3)

#벡터의 산술연산
2*d #각 요소에 2를 곱하게됨

d-5
3*d+4

#벡터와 벡터간의 연산 / 벡터안에 원소의 갯수가 같아야함
x <- c(2,4,6)
y <- c(1,3,5)
x+y #대응하는 요소끼리 더하여 출력함

z <- x+y
z

#벡터의 함수를 이용
d <- c(1:10)
d
#벡터 요소의 합
sum(d)
sum(3*d)

#벡터 요소의 길이(개수)
length(d)

#벡터 요소의 평균
mean(d)
mean(d[1:5]) # 1에서 5까지의 평균

#최대값 최소값
max(d)
min(d)

#정렬(기본적으로 오름차순)
sort(d)
sort(x=d, decreasing = TRUE) #decreasing = 내림차순
sort(d, T)

#중앙값
v1 <- median(d)
v1

v2 <- sum(d)/length(d)
v2

#벡터의 논리연산
d <- c(1:9)
d
d >= 5 #결과는 TURE 또는 FALSE 만 나옴(논리값출력)
d[d>=5] #대괄호가 들어가면 실제값을 출력
sum(d[d>5]) # 5초과의 합계를 출력
condi <- (d>5) & (d<8)
condi
d[condi] #값이 나오게 하려면

