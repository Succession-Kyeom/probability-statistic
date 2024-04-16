#install.packages('xlsx')
#출처:	국립환경과학원, 「대기환경연보」
#주석:	17개 시·도 연평균 미세먼지(PM2.5)농도의 인구가중 평균값임.

library(xlsx)
setwd('C:\\Users\\user\\OneDrive\\문서\\확통\\dust')
dust <- read.xlsx('미세먼지.xlsx', sheetIndex = 1)

years <- c(dust[2, ])

names(dust) <- years
dust <- dust[3:20, ]

#다음은 미세먼지 농도를 나타낸 것이다.
#1. 전국인구가중편균을 꺾은선그래프로 나타내시오.
mean <- c(dust[1, ])
plot(years, mean, main = "전국인구가중평균", type = "o", col = "red")
plot

dust
#2. 2022년도 지역별 미세먼지 평균을 막대 그래프로 나타내시오.
year2022 <- as.integer(c(dust[-1, '2022']))
local <- c(dust[-1, 1])

barplot(year2022)
barplot(year2022, names.arg = local, main = "지역별 평균 미세먼지 농도", cex.names = 0.7, xlab = "local", ylab = "density")