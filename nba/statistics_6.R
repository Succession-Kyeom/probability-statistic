setwd('C:\\Users\\user\\OneDrive\\문서\\확통\\nba')

nba <- read.csv('nbastat2022.csv', encoding = 'UTF-8')
nbaLabel <- nba[0,]

#다음은 2022년 nba 농구선수들의 통계이다.

#1-1. 선수와 GP를 출력하시오.
GP <- data.frame(nba[,(2:3)])


#1-2. 선수와 GP를 내림차순으로 출력하시오.
GP <- GP[order(GP[, 2], decreasing = TRUE),]

#1-3. 결측값을 제거하여 출력하시오.
GP <- na.omit(GP)
GP

#2. FTA의 평균을 구하시오.
FTA <- na.omit(nba[, 'FTA'])
FTAmean <- mean(FTA)
FTAmean