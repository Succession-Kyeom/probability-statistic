rebootCharacter <- c('바이퍼', '섀도어', '소울마스터', '비숍', '윈드브레이커', '나이트로드',
               '나이트워커', '메르세데스', '은월', '아크메이지(불, 독)')
rebootRate <- c(6.4, 6.21, 5.77, 5.72, 4.92, 4.87, 4.12, 4.12, 3.81, 3.6)
reboot <- data.frame(rebootCharacter, rebootRate)

scaniaCharacter <- c('아델', '소울마스터', '섀도어', '윈드브레이커', '비숍', '바이퍼', '나이트로드',
            '메르세데스', '듀얼블레이더', '은월')
scaniaRate <- c(7.04, 6.54, 4.7, 4.62, 4.52, 4.39, 4.33, 4.12, 4.06, 4.01)
scania <- data.frame(scaniaCharacter, scaniaRate)

auroraCharacter <- c('아델', '소울마스터', '윈드브레이커', '듀얼블레이더', '바이퍼', '비숍',
                     '섀도어', '나이트로드', '은월', '히어로')
auroraRate <- c(7.62, 5.85, 4.75, 4.52, 4.25, 4.13, 4.09, 3.77, 3.57, 3.38)
aurora <- data.frame(auroraCharacter, auroraRate)

stat <- data.frame(reboot, scania, aurora)
stat

#다음은 240레벨 이상의 서버별 직업 통계를 10위까지 나타낸 것이다.
#문제에서 제시하는 바를 나타내시오.(이 때 단위는 %이다.)

#1. 서버별 1위에서 10위까지의 직업 순위가 전체에서 차지하는 비율을 벡터로 나타내시오.
rebootSums <- colSums(stat[2])
scaniaSums <- colSums(stat[4])
auroraSums <- colSums(stat[6])
sums <- c(rebootSums, scaniaSums, auroraSums)
sums

#2-1. 각 서버별 비율이 5% 이상인 직업들을 나타내시오.
rebootMany <- stat[rebootRate >= 5, 1]
scaniaMany <- stat[scaniaRate >= 5, 3]
auroraMany <- stat[auroraRate >= 5, 5]

rebootMany
scaniaMany
auroraMany

#2-2. 모든 서버에서 5% 이상의 비율을 보인 직업을 나타내시오.
manyMany <- intersect(intersect(rebootMany, scaniaMany), auroraMany)
manyMany