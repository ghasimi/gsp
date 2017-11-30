
data("iris")
d = iris[c(51:150),]
head(d)
pairs(d[,-5], col=d[,5])
d1=d[,-5]

med = apply(as.matrix(d1),2,FUN=median)
med = matrix(rep(med,100), nrow = 100, byrow = TRUE)

d1[d1<=med] = 0
d1[d1> med] = 1
pairs(d1, col=d[,5])

set.seed(1)
e = matrix(rnorm(400), nrow = 100)
d2 = d1 + e*0.1 # scale factor
pairs(d2, col=d[,5])
