#리스트(벡터와 같은 1차원 데이터를 나타내는 것은 맞으나
#리스트는 다른 데이터형을 가질 수 있는것이 리스트임)

ds <- c(10,15,80,69)
my.info <- list(name = "홍길동", age = 12, status = TRUE, score = ds)
my.info
# 리스트 요소를 접근이나 출력하는 방법
my.info[1]
my.info[3]
my.info$age # $를 사용하는 방법 권장
my.info$score
# unlist() = 리스트를 해제하고 벡터식으로 변경함
vmyinfo <- unlist(my.info)
vmyinfo
# as.integer() = 다른 데이터형을 숫자형으로 바꿔주는 함수
v1 = as.integer(vmyinfo[2])
v1

# 팩터(factor)
bt <- c("A", "B", "B", "O", "AB", "A")
bt
fbt <- factor(bt)
fbt
bt[5]
fbt[5]
# levels() = 팩터에 저장된 데이터의 종류를 알려준다.
levels(fbt)

as.integer(fbt) #숫자형으로 변형
length(fbt)
fbt[7] <- "B"
fbt
# Z라는 값은 fbt 라는 팩터의 level에 없는 값이다.
# 그래서 NA를 생성한다.
fbt[8] <- "Z"
fbt
