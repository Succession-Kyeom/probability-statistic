setwd('C:\\Users\\user\\OneDrive\\문서\\확통\\movie')

movie <- read.csv('movie.csv', sep = ',', head = TRUE, encoding = 'UTF-8')

movie_rank <- movie[6:15, 2:9]
name <- movie_rank[, 1]
start <- movie_rank[, 2]
pay <- movie_rank[, 3]
person <- movie_rank[, 5]
screen <- movie_rank[, 7]
country <- movie_rank[, 8]

# 다음은 2024년을 기준으로 천만관객을 기록한 영화들을 10위까지 나타낸 것이다.

# 1. 미국 영화를 이름만 나열하시오.
america <- subset(movie_rank, country == '미국')
america[, 1]


# 2. 매출액을 numeric 형태로 변환하시오.
pay <- gsub(',', '', pay)
pay <- as.numeric(pay)


# 2-1. 매출액을 억 단위로 계산하여 막대그래프로 나타내시오.
pay_cut <- pay %/% 10000000
barplot(pay_cut, names.arg = name, main = '매출액', cex.names = 0.4, xlab = '영화명', ylab = '매출액(억)')

# 3. 영화 매출 비율을 파이 차트로 나타내시오.
graph <- pie(table(name))

# 3-1. 파이 차트 결과를 보았을 때 적절한 표현 방식인가? 아니라면 이유는 무엇인가?
# -> 각 영화별 매출액의 차이가 크지 않기 때문에 비율이 거의 비슷하게 나타난다. 따라서 적절하지 않다.

# 4. 가장 최근에 개봉한 영화를 출력하시오.
recent <- subset(movie_rank, start == max(start))
recent