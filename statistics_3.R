platform <- c('모바일', 'PC', '콘솔', '아케이드')

p2020 <- c(57.4, 35.5, 5.8, 1.4)
names(p2020) <- platform

p2021 <- c(57.9, 35.6, 5.0, 1.5)
names(p2021) <- platform

p2022 <- c(58.9, 34.5, 5.1, 1.5)
names(p2022) <- platform

#1. 2020~2021 플랫폼 별 이용률의 변동폭을 출력하라
v1 = p2021 - p2020
names(v1) <- platform
print(v1)

#2. sort함수를 이용하여 가장 큰 변동폭을 출력하라
v2 <- sort(abs(v1), decreasing = TRUE)
v2[1]