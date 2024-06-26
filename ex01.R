#매트릭스(matrix) : 동일한 데이터형을 가지는 2차원 데이터형태의
# 자료구조이다.

z <- matrix(1:20, nrow = 4, ncol = 5)
z
# byrow 속성은 데이터의 저장 순서를 결정짓는다.
# 기본값은 컬럼기준으로 저장된다.
z2 <- matrix(1:20, nrow = 4, ncol = 5, byrow = TRUE)
z2

#벡터를 만들어서 매트릭스 형태로 변환
x <- c(1:4)
y <- c(5,8)

z <- matrix(1:20, nrow = 4, ncol = 5)
z

# 벡터x와 벡터 y를 이용하여 cbind()를 통하여 열 방향으로
# 결합하여 매트릭스를 생성함
m1 <- cbind(x, y)
m1
# rbind() 를 통하여 행 방향으로 결합함
m2 <- rbind(x,y)
m2
# 열 갯수가 같지 않으면 bind 가 되지않음
m3 <- rbind(m2, x)
m3

m4 <- cbind(z, x)
m4
#                  x
#[1,] 1 5  9 13 17 1
#[2,] 2 6 10 14 18 2
#[3,] 3 7 11 15 19 3
#[4,] 4 8 12 16 20 4

#매트릭스에 접근하는 방법
z <- matrix(1:20, nrow = 4, ncol = 5)
z
z[2,3] # 2행 3열의 값 출력
z[2,3] <- 55 # 2행 3열의 값 변경
z[2,3]

z[1,] # 1행 전부 출력
z[,1] # 1열 전부 출력

z[1, 1:3] # 1행 중에서 1~3열까지의 값을 출력
z[1, c(1,2,4)] # 1행 중에서 1, 2, 4 번째 열만 출력

#매트릭스에 행이름, 열이름을 주는 방법
score <- matrix(c(90,50,60,40,30,57,46,45,47,87,56,78),
                nrow = 4, ncol = 3)
score

rownames(score) <- c("존","홍길동","김갑수","정민수")
colnames(score) <- c("국어", "영어","수학")
score
score[1,1]
score["김갑수", "국어"]
score["존",] # 존의 모든 성적
score[,"수학"] # 모든 사람의 수학 성적 출력
score["홍길동", "국어"] = 100 # 홍길동의 국어점수를 변경
sum(score[,"국어"]) #국어점수의 합계
mean(score[,"국어"]) #국어점수의 평균
